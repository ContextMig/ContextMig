.class Lde/baumann/browser/Activity/BrowserActivity$44$4$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$44$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

.field final synthetic val$pass_titleET:Landroid/widget/EditText;

.field final synthetic val$pass_userNameET:Landroid/widget/EditText;

.field final synthetic val$pass_userPWET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$44$4;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1936
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_titleET:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_userNameET:Landroid/widget/EditText;

    iput-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_userPWET:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1941
    :try_start_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_titleET:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1942
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p2, p2, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p2, p2, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$3300(Lde/baumann/browser/Activity/BrowserActivity;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    move-result-object p2

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_userNameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1943
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$3300(Lde/baumann/browser/Activity/BrowserActivity;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_userPWET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1945
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object v1, v1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v2, v1, Lde/baumann/browser/Activity/BrowserActivity$44;->val$db:Lde/baumann/browser/Database/Pass;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object v1, v1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Lde/baumann/browser/Unit/HelperUnit;->secString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_content:Ljava/lang/String;

    invoke-static {p1}, Lde/baumann/browser/Unit/HelperUnit;->secString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lde/baumann/browser/Unit/HelperUnit;->secString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lde/baumann/browser/Unit/HelperUnit;->secString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lde/baumann/browser/Database/Pass;->update(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p2, p2, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p2, p2, Lde/baumann/browser/Activity/BrowserActivity$44;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$3400(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    .line 1947
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->val$pass_titleET:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    .line 1948
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e00f4

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1951
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1952
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$4;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e00f6

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
