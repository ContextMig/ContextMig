.class public Lorg/asdtm/goodweather/LicenseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LicenseActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x17907e3bfb3dd1f8L    # 3.53024773318641E-195

    const-string v2, "org/asdtm/goodweather/LicenseActivity"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private readLicense(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 64
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x17

    aput-boolean v7, v2, v3

    .line 65
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x18

    aput-boolean v7, v2, v1

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x19

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v1

    .line 69
    .local v0, "stringRead":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1a

    const/4 v5, 0x1

    aput-boolean v5, v2, v1

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    const/4 v5, 0x1

    aput-boolean v5, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    const/16 v5, 0x1d

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v2, v5

    .line 73
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x1e

    const/4 v5, 0x1

    aput-boolean v5, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 76
    const/16 v1, 0x1f

    aput-boolean v7, v2, v1

    .line 77
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x21

    aput-boolean v7, v2, v3

    return-object v1

    .line 75
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 76
    const/16 v1, 0x1c

    aput-boolean v7, v2, v1

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 76
    const/16 v3, 0x20

    aput-boolean v7, v2, v3

    throw v1
.end method

.method private setupActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 45
    const v1, 0x7f0f007b

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    const/16 v3, 0xf

    aput-boolean v4, v2, v3

    .line 46
    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/LicenseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v1, 0x10

    aput-boolean v4, v2, v1

    .line 47
    invoke-virtual {p0}, Lorg/asdtm/goodweather/LicenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/16 v1, 0x11

    aput-boolean v4, v2, v1

    .line 51
    :goto_0
    const/16 v1, 0x14

    aput-boolean v4, v2, v1

    return-void

    .line 48
    :cond_0
    const/16 v1, 0x12

    aput-boolean v4, v2, v1

    .line 49
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x13

    aput-boolean v4, v2, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 22
    invoke-virtual {p0}, Lorg/asdtm/goodweather/LicenseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/asdtm/goodweather/GoodWeatherApp;

    invoke-virtual {v1, p0}, Lorg/asdtm/goodweather/GoodWeatherApp;->applyTheme(Landroid/app/Activity;)V

    aput-boolean v6, v2, v6

    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    .line 24
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/LicenseActivity;->setContentView(I)V

    const/4 v1, 0x3

    aput-boolean v6, v2, v1

    .line 25
    invoke-direct {p0}, Lorg/asdtm/goodweather/LicenseActivity;->setupActionBar()V

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    .line 27
    invoke-virtual {p0}, Lorg/asdtm/goodweather/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    .line 29
    const v1, 0x7f08004a

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v1, v4}, Lorg/asdtm/goodweather/LicenseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/LicenseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v1

    .line 32
    const v1, 0x7f0f0086

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 33
    invoke-virtual {p0}, Lorg/asdtm/goodweather/LicenseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/asdtm/goodweather/LicenseActivity;->readLicense(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "licenseText":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_0

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 35
    const-string v3, "\n\n"

    const-string v4, "<br/><br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    .line 42
    :goto_1
    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    return-void

    .line 37
    :cond_0
    :try_start_1
    const-string v3, "\n\n"

    const-string v4, "<br/><br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    .line 40
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/LicenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x16

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lorg/asdtm/goodweather/LicenseActivity;->onBackPressed()V

    .line 58
    const/16 v1, 0x15

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
