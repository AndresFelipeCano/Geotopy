using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaserGeometric : MonoBehaviour {

    public Vector3 distance;
    public string figureName;
    public Pool pool;
    public bool imActive = false;
    
    public float baseSize, ejectForce, multiplerSize, resizeSpeed = 1;
    public Gradient[] gradients;
    


    public ParticleSystem particleGlow;


    private CreatorProyectil parent;
    private float size;
    [SerializeField]
    private int instrumento;
    public int Instrumento
    {
        get
        {
            return instrumento;
        }

        set
        {
            instrumento = value;
        }
    }

    public bool Mano
    {
        get
        {
            return mano;
        }

        set
        {
            mano = value;
        }
    }
    
    public CreatorProyectil Parent
    {
        get
        {
            return parent;
        }

        set
        {
            parent = value;
        }
    }

    private bool mano; //izq = 0    der = 1


    public bool sinDisparar = true;
    private Vector3 torque;
    private Rigidbody rb;
    private Collider collider;
  



   
    public float vertexSize;
    private float velocityShaderWave;
    public GameObject insideGeometric;
    private GameObject outideSphere;
    private Renderer _rendererInSide, _rendererOutSide;

    private MaterialPropertyBlock _propBlockInSide, _propBlockOutSide;
 

    void Awake()
    {
        _propBlockOutSide = new MaterialPropertyBlock();
        _propBlockInSide = new MaterialPropertyBlock();
        _rendererInSide = insideGeometric.GetComponent<Renderer>();
        _rendererOutSide = GetComponent<Renderer>();


    }





    // Use this for initialization
    void Start () {
        var colorOver = particleGlow.colorOverLifetime;
        colorOver.enabled = true;
        colorOver.color = gradients[Instrumento];
        rb = gameObject.GetComponent<Rigidbody>();
        collider = GetComponentInChildren<Collider>(); 
        collider.enabled = false;

        _rendererInSide.GetPropertyBlock(_propBlockInSide);

    }
	
	// Update is called once per frame
	void Update () {


        // Get the current value of the material properties in the renderer.
      
        // Assign our new value.
        _propBlockInSide.SetFloat("_insVertexSize", vertexSize);
        _propBlockOutSide.SetFloat("_vertexSize", vertexSize);

       // distance = new Vector3.Distance();



       



        //crecer mientras tenga presionado el boton
        if (mano == false)
        {
            if (parent.triggerPressedL  && sinDisparar == true)
            {
                float t = +Time.time * resizeSpeed;

                size = Mathf.Pow(Mathf.Sin(t), 2);

                transform.localScale = Vector3.one * (size + baseSize) * multiplerSize;

                // Rotate the object around its local X axis at 1 degree per second

                transform.Rotate((Vector3.right / size) * Time.deltaTime * 100);

                // ...also rotate around the World's Y axis
                transform.Rotate((Vector3.up / size) * Time.deltaTime * 100, Space.World);

                velocityShaderWave = 1 / size;
                _propBlockInSide.SetFloat("_timeVel", velocityShaderWave);


            }
        }
        if (mano)
        {
            if (parent.triggerPressedR  && sinDisparar)
            {
                float t = +Time.time * resizeSpeed;

                size = Mathf.Pow(Mathf.Sin(t), 2);

                transform.localScale = Vector3.one * (size + baseSize) * multiplerSize;

                // Rotate the object around its local X axis at 1 degree per second

                transform.Rotate((Vector3.right / size) * Time.deltaTime * 100);

                // ...also rotate around the World's Y axis
                transform.Rotate((Vector3.up / size) * Time.deltaTime * 100, Space.World);

                velocityShaderWave = 1 / size;
                _propBlockInSide.SetFloat("_timeVel", velocityShaderWave); 


            }
        }


        //disparar el proyectíl
        
            if (!parent.triggerPressedR  && sinDisparar == true && mano)
            {
                torque = (Vector3.right * Time.deltaTime * 100) + ((Vector3.up) * Time.deltaTime * 100);
                collider.enabled = true;
                rb.AddTorque(torque / size, ForceMode.Impulse);
                rb.AddForce(parent.GetComponent<Transform>().forward * ejectForce, ForceMode.Impulse);
                parent.triggerPressedR = false;
                transform.parent = null;
                sinDisparar = false;
            }
       
       
            if (!parent.triggerPressedL  && sinDisparar  == true && mano == false )
            {
                torque = (Vector3.right * Time.deltaTime * 100) + ((Vector3.up) * Time.deltaTime * 100);
                collider.enabled = true;
                rb.AddTorque(torque / size, ForceMode.Impulse);
                rb.AddForce(parent.GetComponent<Transform>().forward * ejectForce, ForceMode.Impulse);
                parent.triggerPressedL = false;
                transform.parent = null;
                sinDisparar = false;
            }

        if (Input.GetKeyUp(KeyCode.Space))
        {
            parent.triggerPressedL = false;
        }
        if (Input.GetKeyUp(KeyCode.KeypadEnter))
        {
            parent.triggerPressedR = false;
        }



        // Apply the edited values to the renderer.
        _rendererInSide.SetPropertyBlock(_propBlockInSide);
        _rendererOutSide.SetPropertyBlock(_propBlockOutSide);

    }
    private void OnTriggerEnter(Collider other)
    {
        pool.InPool(this);
        Communications.Send(name);
    }

}
