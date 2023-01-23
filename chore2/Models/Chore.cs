namespace chore2.Models;

public class Chore
{
    public int Id { get; set; }

    public string Description { get; set; } 
    public string Category { get; set; }  
    public bool Archived { get; set; }  
    public string CreatorId { get; set; } 
    public Account Creator { get; set; }
}
