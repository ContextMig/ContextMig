.class Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 70
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2$1;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;)V

    .line 79
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 81
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 82
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
