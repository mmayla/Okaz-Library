using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.GamerServices;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;
using System.Timers;

namespace CrazyDrift
{
    public class Game1 : Microsoft.Xna.Framework.Game
    {
        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        SpriteFont statueFont;
        System.Timers.Timer gametimer;

        private Texture2D playercar;
        private Texture2D background;
        private Texture2D peoplecar;
        private Texture2D statuebar;
        private Texture2D finish;
        private Texture2D begin;
        private List<Vector2> pcarlist;

        private Vector2 carlocation;
        private Vector2 background1, background2;

        bool boom,inBegin;
        private Random randnumber;

        private int speed;
        private int Level,Levelprint;
        private int score,scoreprint;
        private int time;
        private string stime;

        //sound effects
        private Song beginsong;
        private Song boomFX;

        public Game1()
        {
            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";

            graphics.PreferredBackBufferHeight = 600;       //change screen height to 600
            graphics.PreferredBackBufferWidth = 800;        //change screen width to 800

            //intialize timer
            gametimer = new System.Timers.Timer(2000);
            gametimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            gametimer.Interval = 15000;
            gametimer.Enabled = true;

            //intialize variables
            boom = false;
            inBegin = true;
            stime = "0";
            resetgame();
        }

        protected override void Initialize()
        {
            pcarlist = new List<Vector2>();
            carlocation = new Vector2(250-42/2,400);
            randnumber = new Random();

            background1 = new Vector2(0, 0);
            background2 = new Vector2(0,-600);

            base.Initialize();
        }

        protected override void LoadContent()
        {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);
            statueFont = Content.Load<SpriteFont>("StatueFont");

            playercar = Content.Load<Texture2D>("player_car");
            background = Content.Load<Texture2D>("background");
            peoplecar = Content.Load<Texture2D>("people_car");
            statuebar = Content.Load<Texture2D>("statue");
            finish = Content.Load<Texture2D>("finish");
            begin = Content.Load<Texture2D>("begin");

            //load sound effects
            boomFX = Content.Load<Song>("BoomFX");
            beginsong = Content.Load<Song>("the fourth horsman");
            MediaPlayer.Volume = (float)0.1;
            MediaPlayer.Play(beginsong);
            MediaPlayer.IsRepeating = true;
        }

        protected override void UnloadContent()
        {
            
        }

       
        protected override void Update(GameTime gameTime)
        {
       
            //key pressed
            if (Keyboard.GetState().IsKeyDown(Keys.Enter))
            {
                boom = false;
                inBegin = false;
                MediaPlayer.Stop();
                MediaPlayer.IsRepeating = false;
            }

            if (Keyboard.GetState().IsKeyDown(Keys.Left))
                carlocation.X = 250 - 42 / 2; //left side

            if (Keyboard.GetState().IsKeyDown(Keys.Right))
                carlocation.X = 350 - 42 / 2;  //right side

            if (Keyboard.GetState().IsKeyDown(Keys.Up))
                carlocation.Y = carlocation.Y >= 0 ? carlocation.Y - 10 : 0; ; //up

            if (Keyboard.GetState().IsKeyDown(Keys.Down))
                carlocation.Y = carlocation.Y <= 600 - playercar.Height ? carlocation.Y + 10 : 600 - playercar.Height;  //down

            //generate a people car
            if (pcarlist.Count == 0 || pcarlist[pcarlist.Count - 1].Y >= randnumber.Next(300,400)) //space between cars
               GenerateCar();

            //if there is a collision
            if (collision() && score != 0) boom = true;
            if (boom==true && score!=0)
            {
                MediaPlayer.Play(boomFX);
                scoreprint = score;
                Levelprint = Level;
            }

            if (boom == true || inBegin)
            {
                resettimer();
            }

            //scene movment
            Vector2 temp;
            for (int i = 0; i < pcarlist.Count; i++)
            {
                //car movment
                temp = pcarlist[i];
                temp.Y += speed;
                pcarlist[i] = temp;
            }

            //background movment
            background1.Y = background1.Y >= 600 ? 0 : background1.Y + speed;
            background2.Y = background1.Y - 600;

            //clear out ot road cars
            pcarlist.RemoveAll(OutOfRoad);

            //count the time
            if (!boom && !inBegin)
            {
                time++;
                score++;
                stime = TimeSpan.FromSeconds(time).ToString();
            }  

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            
                
            
                spriteBatch.Begin();
                if (!boom)
                {
                    if (inBegin)
                    {
                        spriteBatch.Draw(begin, new Vector2(0, 0), Color.White); 
                    }
                    else
                    {
                        DrawTexture(background, background1); //draw background on the beginning of screen
                        DrawTexture(background, background2);
                        DrawTexture(playercar, new Vector2(carlocation.X, carlocation.Y));
                        DrawTexture(statuebar, new Vector2(0, 0));
                        DrawStatue();
                        DrawCarList();
                    }
                }
                else 
                {
                        pcarlist.Clear();
                        DrawFinish();
                        resetgame();
                }
                spriteBatch.End();


            base.Draw(gameTime);
        }

        //================================================

        private void DrawTexture(Texture2D car , Vector2 location)
        {
            spriteBatch.Draw(car, location, Color.White);
        }

        private void DrawStatue()
        {
            spriteBatch.DrawString(statueFont, (Level/10==0 ? "0":"")+Level.ToString(), new Vector2(660, 170), Color.OrangeRed);
            spriteBatch.DrawString(statueFont, stime, new Vector2(590, 320), Color.OrangeRed);
            spriteBatch.DrawString(statueFont, ((int)(score / 10) / 100 == 0 ? "0" : "") + ((int)(score / 10)/10 == 0 ? "0" : "") + (score / 10).ToString(), new Vector2(645, 490), Color.OrangeRed);
        }

        private void DrawFinish()
        {
            spriteBatch.Draw(finish, new Vector2(0, 0), Color.White);
            spriteBatch.DrawString(statueFont,Levelprint.ToString(), new Vector2(460, 218), Color.OrangeRed);
            spriteBatch.DrawString(statueFont, stime, new Vector2(420, 335), Color.OrangeRed);
            spriteBatch.DrawString(statueFont,(scoreprint/10).ToString(), new Vector2(458, 112), Color.OrangeRed);
        }

        private void DrawCarList()
        {
            for (int i = 0; i < pcarlist.Count; i++)
            {
                spriteBatch.Draw(peoplecar, pcarlist[i], Color.White);
            }
        }

        private void GenerateCar()
        {
            int side = randnumber.Next(0,3); //get random number between 0 and 3 (1 OR 2)
            int x, y;
            if (side == 1)
                x = 250 - 42 / 2;
            else x = 350 - 42 / 2;

            y = -100;

            pcarlist.Add(new Vector2(x, y));
        }

        private bool collision()
        {
            int Ymin,Ymax;
            Ymin = (int)carlocation.Y;
            Ymax = (int)carlocation.Y + playercar.Height;

            Ymax -= 10;
           
            for (int i = 0; i < pcarlist.Count; i++)
            {
                if (((pcarlist[i].Y >= Ymin && pcarlist[i].Y <= Ymax) 
                    || (pcarlist[i].Y+peoplecar.Height >= Ymin && pcarlist[i].Y+peoplecar.Height <= Ymax )) 
                    && pcarlist[i].X==carlocation.X)
                    return true;
            }

            return false;
        }

        private bool OutOfRoad(Vector2 location)
        {
            if (location.Y >= 600)
                return true;
            return false;
        }

        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            Level++;
            speed += 2;
        }

        private void resettimer()
        {
            gametimer.Dispose();
            gametimer.Enabled = false;
            gametimer.Close();

            gametimer = new System.Timers.Timer();
            gametimer = new System.Timers.Timer(2000);
            gametimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            gametimer.Interval = 15000;
            gametimer.Enabled = true;
        }

        private void resetgame()
        {
            speed = 5;
            Level = 1;
            score = 0;
            time = 0;
        }
    }
}
