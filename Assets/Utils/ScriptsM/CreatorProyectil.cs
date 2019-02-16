using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreatorProyectil : MonoBehaviour {
    private int kindOfGeo = 0; //0 = Sphere   1 = Cube   2 = Piramide
    private int instrumentos = 0;

    public string[] instrumentsNames;
    public GameObject[] geometrics;
    public Transform creationPoint;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        //cambiar de instrumento
        if (Input.GetKeyUp(KeyCode.UpArrow))
        {
            instrumentos += 1;
            if (instrumentos == instrumentsNames.Length) instrumentos = 0;
        }
            //cambiar de figura
            if (Input.GetKeyUp(KeyCode.Z))
        {
            kindOfGeo += 1;
            if (kindOfGeo == geometrics.Length ) kindOfGeo = 0;

        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            CreateGeometric();
        }
       
    }
    private void CreateGeometric()
    {
      
        
       IncreaserGeometric figura = Instantiate(geometrics[kindOfGeo], creationPoint.position,creationPoint.rotation,creationPoint).GetComponent<IncreaserGeometric>();
        GetComponentInChildren<IncreaserGeometric>().Instrumento = instrumentos;
       
    }
   
}
