.class public Lde/baumann/browser/Task/ScreenshotTask;
.super Landroid/os/AsyncTask;
.source "ScreenshotTask.java"


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
.field private activity:Landroid/app/Activity;

.field private contentHeight:F

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/support/design/widget/BottomSheetDialog;

.field private path:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private final webView:Lde/baumann/browser/View/NinjaWebView;

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/baumann/browser/View/NinjaWebView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lde/baumann/browser/Task/ScreenshotTask;->webView:Lde/baumann/browser/View/NinjaWebView;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->windowWidth:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->contentHeight:F

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->title:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/Task/ScreenshotTask;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    .line 80
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    const v0, 0x7f0e0104

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    .line 83
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lde/baumann/browser/Unit/HelperUnit;->grantPermissionsStorage(Landroid/app/Activity;)V

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->webView:Lde/baumann/browser/View/NinjaWebView;

    iget v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lde/baumann/browser/Task/ScreenshotTask;->contentHeight:F

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2, v3}, Lde/baumann/browser/Unit/ViewUnit;->capture(Landroid/view/View;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lde/baumann/browser/Task/ScreenshotTask;->title:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lde/baumann/browser/Unit/BrowserUnit;->screenshot(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    iput-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_1
    :try_start_1
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->webView:Lde/baumann/browser/View/NinjaWebView;

    iget v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lde/baumann/browser/Task/ScreenshotTask;->contentHeight:F

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2, v3}, Lde/baumann/browser/Unit/ViewUnit;->capture(Landroid/view/View;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lde/baumann/browser/Task/ScreenshotTask;->title:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lde/baumann/browser/Unit/BrowserUnit;->screenshot(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    :catch_1
    iput-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;

    .line 101
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Task/ScreenshotTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 109
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "screenshot"

    const/4 v1, 0x0

    .line 111
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v2, "screenshot_path"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    .line 118
    iget-object v4, p0, Lde/baumann/browser/Task/ScreenshotTask;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 119
    iget-object v4, p0, Lde/baumann/browser/Task/ScreenshotTask;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.extra.STREAM"

    .line 121
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    const v4, 0x7f0e0064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "delete_screenshot"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Landroid/support/design/widget/BottomSheetDialog;

    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    const v1, 0x7f0b002b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e00f3

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 131
    new-instance v2, Lde/baumann/browser/Task/ScreenshotTask$1;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Task/ScreenshotTask$1;-><init>(Lde/baumann/browser/Task/ScreenshotTask;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000f

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 139
    new-instance v2, Lde/baumann/browser/Task/ScreenshotTask$2;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Task/ScreenshotTask$2;-><init>(Lde/baumann/browser/Task/ScreenshotTask;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    const v1, 0x7f0e00f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Task/ScreenshotTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 54
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    const v2, 0x7f0e0111

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 59
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    const v1, 0x7f0b0034

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    iget-object v3, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 65
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    .line 68
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lde/baumann/browser/Unit/ViewUnit;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->windowWidth:I

    .line 69
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->webView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lde/baumann/browser/Unit/ViewUnit;->getDensity(Landroid/content/Context;)F

    move-result v1

    mul-float v0, v0, v1

    iput v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->contentHeight:F

    .line 70
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->webView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/baumann/browser/Unit/HelperUnit;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    iget-object v0, p0, Lde/baumann/browser/Task/ScreenshotTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lde/baumann/browser/Task/ScreenshotTask;->context:Landroid/content/Context;

    const v2, 0x7f0e00f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
