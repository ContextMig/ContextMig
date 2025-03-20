.class Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;
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
    .line 112
    iput-object p1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$700(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$700(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$800(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v2}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$900(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v3}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$1000(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v4}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$1100(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;->onOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method
