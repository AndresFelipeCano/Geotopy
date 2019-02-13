using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaserGeometric : MonoBehaviour {
    
    public float baseSize, ejectForce, multiplerSize, resizeSpeed = 1;
    public Gradient gradient;



    private float size;
    
    private bool click = true;
    private Vector3 torque;
    private Rigidbody rb;
    private Collider collider;
    // Use this for initialization
    void Start () {
     
        rb = gameObject.GetComponent<Rigidbody>();
        collider = gameObject.GetComponent<Collider>();
        collider.enabled = false;

       
	}
	
	// Update is called once per frame
	void Update () {
        

            //crecer mientras tenga presionada el boton
            if (Input.GetKey(KeyCode.Space) && click)
        {
            float t =+ Time.time * resizeSpeed;
        
            size = Mathf.Pow(Mathf.Sin(t),2);

            transform.localScale = Vector3.one * (size + baseSize) * multiplerSize;

            // Rotate the object around its local X axis at 1 degree per second
            
            transform.Rotate((Vector3.right / size) * Time.deltaTime * 100);

            // ...also rotate around the World's Y axis
            transform.Rotate((Vector3.up/size) * Time.deltaTime  *100, Space.World);

        }

        //disparar el proyectíl

        if (Input.GetKeyUp(KeyCode.Space) && click)
        {
            torque = ((Vector3.right  * Time.deltaTime * 100) + ((Vector3.up) * Time.deltaTime * 100));
            collider.enabled = true;
            rb.AddTorque(torque/size, ForceMode.Impulse);
            rb.AddForce(transform.parent.GetComponent<Transform>().forward * ejectForce, ForceMode.Impulse);

            transform.parent = null;
            click = false;
        }
        

        GetComponent<Renderer>().material.color = gradient.Evaluate(size);
    }

}
