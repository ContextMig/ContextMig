.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;
.super Landroid/os/FileObserver;
.source "ShoppingListsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->setupObserver(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

.field final synthetic val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Ljava/lang/String;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    iput-object p3, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->unmarshal(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    invoke-static {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->clear()V

    .line 169
    iget-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    invoke-static {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$802(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;Z)Z

    .line 172
    iget-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    invoke-static {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$1100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->getName()Ljava/lang/String;

    move-result-object p2

    .line 173
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$3;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/woefe/shoppinglist/shoppinglist/UnmarshallException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->access$1200()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileObserver could not read file."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
