using UnityEngine;

public class PlayerController : MonoBehaviour
{
    // Movement speed modifier
    public float moveSpeed = 5f;

    // Built-in Unity physics component
    private Rigidbody rb;

    void Start()
    {
        // Get the Rigidbody component when the game begins
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        // 1. Get input from WASD or Arrow keys
        float moveX = Input.GetAxis("Horizontal");
        float moveZ = Input.GetAxis("Vertical");

        // 2. Create a movement direction vector
        Vector3 moveDirection = new Vector3(moveX, 0f, moveZ).normalized;

        // 3. Apply movement to the Rigidbody
        rb.linearVelocity = new Vector3(moveDirection.x * moveSpeed, rb.linearVelocity.y, moveDirection.z * moveSpeed);

        // 4. Rotate the player to face the direction they are running
        if (moveDirection != Vector3.zero)
        {
            transform.forward = moveDirection;
        }
    }
}
