.class public Lde/baumann/browser/Browser/NinjaDownloadListener;
.super Ljava/lang/Object;
.source "NinjaDownloadListener.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 26
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    instance-of p2, v2, Landroid/app/Activity;

    if-nez p2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p5, 0x7f0e003f

    invoke-virtual {v2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " - "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    new-instance p5, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p5, v2}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const p6, 0x7f0b002b

    const/4 v0, 0x0

    .line 34
    invoke-static {v2, p6, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    const v0, 0x7f09004b

    .line 35
    invoke-virtual {p6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090019

    .line 37
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 38
    new-instance v7, Lde/baumann/browser/Browser/NinjaDownloadListener$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lde/baumann/browser/Browser/NinjaDownloadListener$1;-><init>(Lde/baumann/browser/Browser/NinjaDownloadListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09000f

    .line 45
    invoke-virtual {p6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 46
    new-instance p2, Lde/baumann/browser/Browser/NinjaDownloadListener$2;

    invoke-direct {p2, p0, p5}, Lde/baumann/browser/Browser/NinjaDownloadListener$2;-><init>(Lde/baumann/browser/Browser/NinjaDownloadListener;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p5, p6}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p5}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void

    .line 28
    :cond_1
    :goto_0
    iget-object p2, p0, Lde/baumann/browser/Browser/NinjaDownloadListener;->context:Landroid/content/Context;

    invoke-static {p2, p1, p3, p4}, Lde/baumann/browser/Unit/BrowserUnit;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
