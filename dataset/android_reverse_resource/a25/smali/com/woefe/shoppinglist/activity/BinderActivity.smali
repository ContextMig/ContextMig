.class public abstract Lcom/woefe/shoppinglist/activity/BinderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;
    }
.end annotation


# instance fields
.field private binder:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

.field private final serviceConnection:Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;-><init>(Lcom/woefe/shoppinglist/activity/BinderActivity;Lcom/woefe/shoppinglist/activity/BinderActivity$1;)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->serviceConnection:Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;

    .line 37
    iput-object v1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->binder:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/activity/BinderActivity;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->binder:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/woefe/shoppinglist/activity/BinderActivity;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->binder:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    return-object p1
.end method


# virtual methods
.method protected getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->binder:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    return-object v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->binder:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onServiceConnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V
.end method

.method protected abstract onServiceDisconnected(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V
.end method

.method protected onStart()V
    .locals 3

    .line 41
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->serviceConnection:Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/woefe/shoppinglist/activity/BinderActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/BinderActivity;->serviceConnection:Lcom/woefe/shoppinglist/activity/BinderActivity$ShoppingListServiceConnection;

    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/activity/BinderActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 48
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method
