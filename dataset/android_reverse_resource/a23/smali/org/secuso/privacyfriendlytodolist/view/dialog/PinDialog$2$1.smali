.class Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2$1;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 74
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;->resetApp()V

    :cond_0
    return-void
.end method
