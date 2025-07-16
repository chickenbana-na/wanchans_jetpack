using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    public float speed = 5f;

    void Update()
    {
        float dx = Input.GetAxisRaw("Horizontal");
        float dy = Input.GetAxisRaw("Vertical");   

        Vector3 direction = new Vector3(dx, dy, 0).normalized;
        transform.position += direction * speed * Time.deltaTime;
    }
}
