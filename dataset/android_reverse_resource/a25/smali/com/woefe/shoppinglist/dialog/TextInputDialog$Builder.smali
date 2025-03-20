.class public Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
.super Ljava/lang/Object;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/dialog/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/woefe/shoppinglist/dialog/TextInputDialog;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 147
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 149
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start dialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public setAction(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->access$302(Lcom/woefe/shoppinglist/dialog/TextInputDialog;I)I

    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method

.method public setHint(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 168
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHint(Ljava/lang/String;)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->access$202(Lcom/woefe/shoppinglist/dialog/TextInputDialog;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 159
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-static {v0, p1}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->access$102(Lcom/woefe/shoppinglist/dialog/TextInputDialog;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    invoke-virtual {v0, p1, p2}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    return-object p0
.end method

.method public show()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->dialog:Lcom/woefe/shoppinglist/dialog/TextInputDialog;

    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
