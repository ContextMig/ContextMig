.class Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$1;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialogBuilder.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->createDialog()V
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
    .line 94
    iput-object p1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$1;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$1;->this$0:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-static {v0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->access$500(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
