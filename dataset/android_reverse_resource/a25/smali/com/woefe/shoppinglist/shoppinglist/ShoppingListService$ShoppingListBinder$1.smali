.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder$1;
.super Ljava/lang/Object;
.source "ShoppingListService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getListNames()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder$1;->this$1:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
