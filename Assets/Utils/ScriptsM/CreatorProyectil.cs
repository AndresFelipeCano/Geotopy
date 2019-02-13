using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreatorProyectil : MonoBehaviour {
    public int kindOfGeo = 0; //0 = Sphere   1 = Cube   2 = Piramide 
    public GameObject[] geometrics;
    public Transform creationPoint;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
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
      
        
        Instantiate(geometrics[kindOfGeo], creationPoint.position,creationPoint.rotation,creationPoint);
       
    }
   
}
