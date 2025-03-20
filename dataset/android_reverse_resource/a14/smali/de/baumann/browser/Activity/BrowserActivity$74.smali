.class Lde/baumann/browser/Activity/BrowserActivity$74;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onLongPress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2900
    const-class v0, Lde/baumann/browser/Activity/BrowserActivity;

    return-void
.end method

.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V
    .locals 0

    .line 2900
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2906
    :try_start_0
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2907
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090049

    .line 2909
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f09004a

    .line 2910
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0e0040

    .line 2912
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 2913
    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v3}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v3

    invoke-virtual {v3}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/baumann/browser/Unit/HelperUnit;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2915
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0058

    .line 2916
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0026

    .line 2917
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$74$1;

    invoke-direct {v3, p0, v1, v2}, Lde/baumann/browser/Activity/BrowserActivity$74$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$74;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0023

    .line 2960
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$74$2;

    invoke-direct {v2, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$74$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity$74;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2967
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 2968
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 2969
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1300(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    .line 2970
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2972
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
