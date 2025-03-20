.class Lde/baumann/browser/Activity/BrowserActivity$44$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$44;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

.field final synthetic val$_id:Ljava/lang/String;

.field final synthetic val$pass_attachment:Ljava/lang/String;

.field final synthetic val$pass_content:Ljava/lang/String;

.field final synthetic val$pass_icon:Ljava/lang/String;

.field final synthetic val$pass_title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1914
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_icon:Ljava/lang/String;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_attachment:Ljava/lang/String;

    iput-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_title:Ljava/lang/String;

    iput-object p5, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$_id:Ljava/lang/String;

    iput-object p6, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1917
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1920
    :try_start_0
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1921
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0b0030

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b5

    .line 1923
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0900b6

    .line 1924
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0900b7

    .line 1925
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1927
    iget-object v4, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v4, v4, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v4}, Lde/baumann/browser/Activity/BrowserActivity;->access$3300(Lde/baumann/browser/Activity/BrowserActivity;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    move-result-object v4

    iget-object v5, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_icon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1928
    iget-object v5, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v5, v5, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v5}, Lde/baumann/browser/Activity/BrowserActivity;->access$3300(Lde/baumann/browser/Activity/BrowserActivity;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    move-result-object v5

    iget-object v6, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_attachment:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1930
    iget-object v6, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->val$pass_title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1932
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0058

    .line 1935
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0026

    .line 1936
    new-instance v4, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;

    invoke-direct {v4, p0, v1, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity$44$4$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44$4;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0023

    .line 1956
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$44$4$2;

    invoke-direct {v2, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$44$4$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44$4;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1964
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 1965
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1966
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1300(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1969
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1970
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$4;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v0, 0x7f0e00f6

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
