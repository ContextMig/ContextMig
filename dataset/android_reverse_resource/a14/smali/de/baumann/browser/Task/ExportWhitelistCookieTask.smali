.class public Lde/baumann/browser/Task/ExportWhitelistCookieTask;
.super Landroid/os/AsyncTask;
.source "ExportWhitelistCookieTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dialog:Landroid/support/design/widget/BottomSheetDialog;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 24
    iput-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 41
    iget-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lde/baumann/browser/Unit/BrowserUnit;->exportWhitelist(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->path:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->path:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->hide()V

    .line 48
    iget-object v0, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    const v0, 0x7f0e00f7

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 29
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    iget-object v1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 30
    iget-object v0, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    const v1, 0x7f0b0034

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    iget-object v2, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->context:Landroid/content/Context;

    const v3, 0x7f0e0111

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    iget-object v0, p0, Lde/baumann/browser/Task/ExportWhitelistCookieTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method
