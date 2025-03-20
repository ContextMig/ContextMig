.class Lcom/woefe/shoppinglist/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/MainActivity;->onListsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/MainActivity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$5;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity$5;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    invoke-static {v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->access$200(Lcom/woefe/shoppinglist/activity/MainActivity;)V

    .line 329
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity$5;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$5;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    invoke-static {v1}, Lcom/woefe/shoppinglist/activity/MainActivity;->access$300(Lcom/woefe/shoppinglist/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->hasList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/MainActivity$5;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/woefe/shoppinglist/activity/MainActivity;->access$000(Lcom/woefe/shoppinglist/activity/MainActivity;I)V

    :cond_0
    return-void
.end method
