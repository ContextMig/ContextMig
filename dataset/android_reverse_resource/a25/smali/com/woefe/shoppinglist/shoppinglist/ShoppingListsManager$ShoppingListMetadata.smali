.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
.super Ljava/lang/Object;
.source "ShoppingListsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShoppingListMetadata"
.end annotation


# instance fields
.field private final filename:Ljava/lang/String;

.field private isDirty:Z

.field private observer:Landroid/os/FileObserver;

.field private final shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;


# direct methods
.method private constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    .line 257
    iput-object p3, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->isDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->filename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Landroid/os/FileObserver;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->observer:Landroid/os/FileObserver;

    return-object p0
.end method

.method static synthetic access$402(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->observer:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Z
    .locals 0

    .line 249
    iget-boolean p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->isDirty:Z

    return p0
.end method

.method static synthetic access$802(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;Z)Z
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->isDirty:Z

    return p1
.end method
