public class Subject : Object{
    public string name { get; set; }
    public ListStore grades_model { get; construct; }
    public HashTable<string, Category> categories_by_name { get; construct; }

    public Subject (string name) {
        Object (name: name);
    }

    construct {
        grades_model = new ListStore (typeof (Grade));
        categories_by_name = new HashTable<string, Category> (str_hash, str_equal);
    }

    public void new_grade (string grade, string note, string c) {
        grades_model.insert (0, new Grade (grade, note, c));
    }
}
