#priority 1919810
import crafttweaker.item.IItemStack;

zenClass exportModItems {
    zenConstructor (modName as string) {
        Name = modName;
        }

        val Name as string;

        function getItemList() as IItemStack[] {
             for item in this.Name.items {
             var allItems as IItemStack[];
             allItems += item;
            }
             return allItems;
        }
        
        function printListToLog() as void {
             for item in this.Name.items {
                print("Export mod items by " ~ this.Name ~ ".");
                   var allItems as IItemStack[];
                   allItems += item;
                      for i in 0 .. allItems.length {
                          print(allItems[i].name);
                  }
             }
              return print("Export Mod Over!");
        }
        
        function getItemAmount() as int {
             for item in this.Name.items {
             var allItems as IItemStack[];
             allItems += item;
             }
              return allItems.length;
        }
    }
}
