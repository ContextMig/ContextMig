.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;
.super Landroid/os/FileObserver;
.source "ShoppingListsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->onStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

.field final synthetic val$directory:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    iput-object p3, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;->val$directory:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;->val$directory:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x100

    if-eq p1, p2, :cond_2

    const/16 p2, 0x200

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;->access$200(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$MetadataContainer;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0x64

    .line 77
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 78
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$1;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->access$300(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Ljava/io/File;)V

    :goto_0
    return-void
.end method
