.class Lde/baumann/browser/Activity/BrowserActivity$15;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$pass_title:Landroid/widget/EditText;

.field final synthetic val$pass_userName:Landroid/widget/EditText;

.field final synthetic val$pass_userPW:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_title:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_userName:Landroid/widget/EditText;

    iput-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_userPW:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 966
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 970
    :try_start_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "saved_key"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->newInstance(Ljava/lang/String;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    move-result-object p1

    .line 971
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_userName:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 972
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_userPW:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 974
    new-instance v0, Lde/baumann/browser/Database/Pass;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {v0, p2}, Lde/baumann/browser/Database/Pass;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-virtual {v0}, Lde/baumann/browser/Database/Pass;->open()V

    .line 976
    invoke-static {v1}, Lde/baumann/browser/Unit/HelperUnit;->secString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lde/baumann/browser/Database/Pass;->isExist(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 977
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e00ff

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 979
    :cond_0
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1400(Lde/baumann/browser/Activity/BrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lde/baumann/browser/Unit/HelperUnit;->secString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lde/baumann/browser/Database/Pass;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e00f4

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    .line 981
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->val$pass_title:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 984
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 985
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$15;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e00f6

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
