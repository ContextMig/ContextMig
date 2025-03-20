.class Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$4;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 96
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;->declined()V

    return-void
.end method
