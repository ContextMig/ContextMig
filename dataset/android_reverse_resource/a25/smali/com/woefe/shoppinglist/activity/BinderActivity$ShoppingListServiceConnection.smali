.class Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;
.super Ljava/lang/Object;
.source "BinderActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/activity/BinderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShoppingListServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;


# direct methods
.method private constructor <init>(Lcom/woefe/shoppinglist/activity/BinderActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/woefe/shoppinglist/activity/BinderActivity;Lcom/woefe/shoppinglist/activity/BinderActivity$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;-><init>(Lcom/woefe/shoppinglist/activity/BinderActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/activity/BinderActivity;->access$102(Lcom/woefe/shoppinglist/activity/BinderActivity;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    .line 68
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    invoke-static {p2}, Lcom/woefe/shoppinglist/activity/BinderActivity;->access$100(Lcom/woefe/shoppinglist/activity/BinderActivity;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onServiceConnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    invoke-static {v0}, Lcom/woefe/shoppinglist/activity/BinderActivity;->access$100(Lcom/woefe/shoppinglist/activity/BinderActivity;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/activity/BinderActivity;->onServiceDisconnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V

    .line 74
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;->this$0:Lcom/woefe/shoppinglist/activity/BinderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/activity/BinderActivity;->access$102(Lcom/woefe/shoppinglist/activity/BinderActivity;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    return-void
.end method
