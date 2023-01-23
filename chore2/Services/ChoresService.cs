namespace chore2.Services;

public class ChoresService
{
    private readonly ChoresRepository _repo;

  public ChoresService(ChoresRepository repo)
  {
    _repo = repo;
  }

  internal List<Chore> Get(string userId)
  {
    List<Chore> chores = _repo.Get();
    return chores;
  }
  internal Chore Create(Chore choreData)
  {
    Chore chore = _repo.Create(choreData);
    return chore;
  }
  internal string Remove(int id, string userId)
  {
    Chore chore = GetOne(id, userId);
    if(chore.CreatorId != userId){
      return "not your chore";
    }
    _repo.Remove(id);
    return $"this chore has be removed";
  }
  internal Chore GetOne(int id, string userId)
  {
    Chore chore = _repo.GetOne(id);
    if(chore == null){
      throw new Exception ("no chore at that id");
    }
    return chore;
  }
}
