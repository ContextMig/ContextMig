.class public Lcom/woefe/shoppinglist/activity/MainActivity$NewListDialog;
.super Lcom/woefe/shoppinglist/dialog/TextInputDialog;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewListDialog"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 373
    const-class v0, Lcom/woefe/shoppinglist/activity/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateInput(Ljava/lang/String;)Z
    .locals 3

    .line 376
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/MainActivity$NewListDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/activity/MainActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v2, ""

    .line 378
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/MainActivity;->getBinder()Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->hasList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const p1, 0x7f0d003e

    .line 385
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_3
    :goto_1
    const p1, 0x7f0d003f

    .line 379
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method
