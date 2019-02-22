using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreatorProyectil : MonoBehaviour {


    public Color[] FigureColors;
    public Interfaces[]interfaces;
    public GameObject BackGround;
    private Pool pool;
    private int kindOfGeo = 0; //0 = Sphere   1 = Cube   2 = Piramide


    private int instrumentos = 0;

    private bool canCreateR, canCreateL;
    private string instanceToCreateR, instanceToCreateL;
 
    public bool triggerPressedL = false;
    public bool triggerPressedR = false;

    
    public string[] instrumentsNames;
    public GameObject[] geometrics;
    public Transform creationPointL, creationPointR;





    public bool CanCreateR
    {
        get
        {
            return canCreateR;
        }

        set
        {
            canCreateR = value;
        }
    }

    public bool CanCreateL
    {
        get
        {
            return canCreateL;
        }

        set
        {
            canCreateL = value;
        }
    }

    public string InstanceToCreateR
    {
        get
        {
            return instanceToCreateR;
        }

        set
        {
            instanceToCreateR = value;
        }
    }

    public string InstanceToCreateL
    {
        get
        {
            return instanceToCreateL;
        }

        set
        {
            instanceToCreateL = value;
        }
    }





    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        //cambiar de instrumento

        //cambiar de figura
        if (Input.GetKeyUp(KeyCode.UpArrow))
        {
            ChangeInstrument();
        }

            if (Input.GetKeyUp(KeyCode.Z))
        {
        
            kindOfGeo += 1;
            if (kindOfGeo == geometrics.Length ) kindOfGeo = 0;

        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            triggerPressedL = true;
            CreateGeometric(creationPointL);
        }
         if (Input.GetKeyDown(KeyCode.KeypadEnter))
        {
            triggerPressedR = true;
            CreateGeometric(creationPointR);
        }
       
    }
    public void CreateGeometric(Transform respawn)
    {

        //para decirle a la bola qué mano la creo y esta crezca solo con el botón de esa mano
        string tag = "";
        bool canShoot = false;
        bool hand = false;
        if (respawn == creationPointL && canCreateL)
        {
            tag = instanceToCreateL;
            canShoot = true;
            hand = false;
        }
        if (respawn == creationPointR && canCreateR)
        {
            tag = instanceToCreateR;
            canShoot = true;
            hand = true;
        }


     if (canShoot)
        {
            GameObject proyectil = pool.OutPool(tag).GetComponent<GameObject>();


            proyectil.transform.position = respawn.position;
            IncreaserGeometric figura = Instantiate(proyectil, respawn.position, respawn.rotation, respawn).GetComponent<IncreaserGeometric>();
            figura.Instrumento = instrumentos;
            figura.Mano = hand;
            figura.Parent = gameObject.GetComponent<CreatorProyectil>();
        }
     
        
      
       
    }

    public void  ChangeInstrument()
        {

            instrumentos += 1;
            if (instrumentos == instrumentsNames.Length) instrumentos = 0;
            for(int i =0; i < interfaces.Length; i++)
        {
            interfaces[i].waterColor = FigureColors[instrumentos];
        }
           
        }

}
