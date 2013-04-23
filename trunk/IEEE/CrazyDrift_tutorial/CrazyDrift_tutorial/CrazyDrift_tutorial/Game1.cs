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

namespace CrazyDrift_tutorial
{
    
    public class Game1 : Microsoft.Xna.Framework.Game
    {
        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;

        //scene variables
        private Texture2D background;
        private Texture2D statusbar;

        //player car variables
        private Texture2D playercar;
        private Vector2 carlocation;

        //enemy cars variables
        private Texture2D enemycar;
        private List<Vector2> ecarlist;
        private Random randnumber;

        //movment
        private int speed=5;
        private bool lose = false;


        public Game1()
        {
            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";

            //change the screen size to 800x600
            graphics.PreferredBackBufferHeight = 600;       //change screen height to 600
            graphics.PreferredBackBufferWidth = 800;        //change screen width to 800
        }

        
        protected override void Initialize()
        {
            // TODO: Add your initialization logic here
            carlocation = new Vector2(250 - (42 / 2), 400);
            ecarlist = new List<Vector2>();
            randnumber = new Random();

            base.Initialize();
        }

        
        protected override void LoadContent()
        {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);

            // TODO: use this.Content to load your game content here
            //load scene
            background = Content.Load<Texture2D>("background");
            statusbar = Content.Load<Texture2D>("status");
            playercar = Content.Load<Texture2D>("player_car");
            enemycar = Content.Load<Texture2D>("enemy_car");
        }

        
        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
        }

        
        protected override void Update(GameTime gameTime)
        {
            // Allows the game to exit
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)
                this.Exit();

            // TODO: Add your update logic here

            //player car movement
            if (Keyboard.GetState().IsKeyDown(Keys.Left))
                carlocation.X = 250 - (42 / 2); //left side

            if (Keyboard.GetState().IsKeyDown(Keys.Right))
                carlocation.X = 350 - (42 / 2);  //right side

            if (Keyboard.GetState().IsKeyDown(Keys.Up))
                carlocation.Y = carlocation.Y >= 5 ? carlocation.Y - 10 : 0; ; //up

            if (Keyboard.GetState().IsKeyDown(Keys.Down))
                carlocation.Y = carlocation.Y <= (600-5) - playercar.Height ? carlocation.Y + 10 : 600 - playercar.Height;  //down


            //generate the enemy cars
            if (ecarlist.Count == 0 || ecarlist[ecarlist.Count - 1].Y >= randnumber.Next(300, 400)) //space between cars
                GenerateCar();

            //enemy car movment
            Vector2 temp;
            for (int i = 0; i < ecarlist.Count; i++)
            {
                //car movment
                temp = ecarlist[i];
                temp.Y += speed;
                ecarlist[i] = temp;
            }

            //clear out of road enemy cars
            ecarlist.RemoveAll(OutOfRoad);

            base.Update(gameTime);
        }

        
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            // TODO: Add your drawing code here
            if (!collision() && !lose)
            {
                spriteBatch.Begin();
                spriteBatch.Draw(background, new Vector2(0, 0), Color.White);
                spriteBatch.Draw(statusbar, new Vector2(0, 0), Color.White);
                spriteBatch.Draw(playercar, carlocation, Color.White);

                DrawCarList();
                spriteBatch.End();
            }

            base.Draw(gameTime);
        }


        //================================================

        private void GenerateCar()
        {
            int side = randnumber.Next(0, 3); //get random number between 0 and 3 (1 OR 2)
            int x, y;
            if (side == 1)
                x = 250 - 42 / 2;
            else x = 350 - 42 / 2;

            y = -100;

            ecarlist.Add(new Vector2(x, y));
        }

        private bool OutOfRoad(Vector2 location)
        {
            if (location.Y >= 600)
                return true;
            return false;
        }

        private void DrawCarList()
        {
            for (int i = 0; i < ecarlist.Count; i++)
            {
                spriteBatch.Draw(enemycar, ecarlist[i], Color.White);
            }
        }

        private bool collision()
        {
            int Ymin, Ymax;
            Ymin = (int)carlocation.Y;
            Ymax = (int)carlocation.Y + playercar.Height;

            Ymax -= 10;

            for (int i = 0; i < ecarlist.Count; i++)
            {
                if (((ecarlist[i].Y >= Ymin && ecarlist[i].Y <= Ymax)
                    || (ecarlist[i].Y + enemycar.Height >= Ymin && ecarlist[i].Y + enemycar.Height <= Ymax))
                    && ecarlist[i].X == carlocation.X)
                {
                    lose = true;
                    return true;
                }
            }

            return false;
        }
    }
}
