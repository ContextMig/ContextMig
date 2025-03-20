.class Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$3;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->buildDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$3;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$3;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$600(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$3;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$600(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;->onCancel()V

    .line 124
    :cond_0
    return-void
.end method
