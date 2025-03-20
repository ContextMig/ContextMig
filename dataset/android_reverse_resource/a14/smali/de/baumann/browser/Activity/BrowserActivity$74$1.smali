.class Lde/baumann/browser/Activity/BrowserActivity$74$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$74;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

.field final synthetic val$editExtension:Landroid/widget/EditText;

.field final synthetic val$editTitle:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2917
    const-class v0, Lde/baumann/browser/Activity/BrowserActivity;

    return-void
.end method

.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$74;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 2917
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->val$editTitle:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->val$editExtension:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 2921
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->val$editTitle:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2922
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->val$editExtension:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2925
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2929
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    const/4 v1, 0x1

    if-lt p1, p2, :cond_2

    .line 2930
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 2932
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e0104

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 2934
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->val$target:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2935
    new-instance p2, Landroid/app/DownloadManager$Request;

    invoke-direct {p2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string p1, "Cookie"

    .line 2936
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object v3, v3, Lde/baumann/browser/Activity/BrowserActivity$74;->val$target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2937
    invoke-virtual {p2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 2938
    invoke-virtual {p2, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 2939
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2940
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 2942
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 2943
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->val$editTitle:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    goto :goto_1

    .line 2946
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->val$target:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2947
    new-instance p2, Landroid/app/DownloadManager$Request;

    invoke-direct {p2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string p1, "Cookie"

    .line 2948
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object v3, v3, Lde/baumann/browser/Activity/BrowserActivity$74;->val$target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2949
    invoke-virtual {p2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 2950
    invoke-virtual {p2, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 2951
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 2952
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 2954
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 2955
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->val$editTitle:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    goto :goto_1

    .line 2926
    :cond_3
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p2, p2, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v0, 0x7f0e00fb

    invoke-virtual {p2, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
