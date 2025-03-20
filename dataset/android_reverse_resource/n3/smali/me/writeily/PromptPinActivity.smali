.class public Lme/writeily/PromptPinActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "PromptPinActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/PromptPinActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x750457ac8a863d08L    # 4.772546400048801E255

    const-string v2, "me/writeily/PromptPinActivity"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/PromptPinActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/PromptPinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/PromptPinActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v1, v6

    .line 23
    invoke-virtual {p0}, Lme/writeily/PromptPinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    aput-boolean v6, v1, v7

    .line 25
    const v2, 0x7f0c005d

    invoke-virtual {p0, v2}, Lme/writeily/PromptPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 26
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-nez v0, :cond_0

    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    .line 31
    :goto_0
    invoke-virtual {p0}, Lme/writeily/PromptPinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v6, v1, v3

    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0600aa

    invoke-virtual {p0, v4}, Lme/writeily/PromptPinActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-boolean v6, v1, v4

    .line 33
    if-nez v3, :cond_1

    const/16 v2, 0x8

    aput-boolean v6, v1, v2

    .line 34
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lme/writeily/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0xb

    aput-boolean v6, v1, v3

    .line 35
    invoke-virtual {p0, v2}, Lme/writeily/PromptPinActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0xc

    aput-boolean v6, v1, v2

    .line 36
    invoke-virtual {p0}, Lme/writeily/PromptPinActivity;->finish()V

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    .line 37
    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 46
    :goto_2
    const/16 v2, 0x19

    aput-boolean v6, v1, v2

    return-void

    .line 26
    :cond_0
    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    .line 27
    invoke-virtual {p0, v0}, Lme/writeily/PromptPinActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 33
    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    goto :goto_1

    .line 37
    :cond_3
    aget-object v4, v2, v6

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    .line 38
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lme/writeily/PinActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x10

    aput-boolean v6, v1, v3

    .line 39
    invoke-virtual {p0, v2}, Lme/writeily/PromptPinActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    .line 40
    invoke-virtual {p0}, Lme/writeily/PromptPinActivity;->finish()V

    const/16 v2, 0x12

    aput-boolean v6, v1, v2

    .line 41
    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    goto :goto_2

    :cond_4
    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x15

    aput-boolean v6, v1, v2

    .line 42
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lme/writeily/AlphanumericPinActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x16

    aput-boolean v6, v1, v3

    .line 43
    invoke-virtual {p0, v2}, Lme/writeily/PromptPinActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x17

    aput-boolean v6, v1, v2

    .line 44
    invoke-virtual {p0}, Lme/writeily/PromptPinActivity;->finish()V

    const/16 v2, 0x18

    aput-boolean v6, v1, v2

    goto :goto_2
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lme/writeily/PromptPinActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 49
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 51
    const-string v1, "jacoco"

    const/16 v3, 0x1a

    aput-boolean v9, v2, v3

    .line 54
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1b

    aput-boolean v9, v2, v3

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c

    aput-boolean v9, v2, v4

    .line 56
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1d

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x1e

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 59
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 60
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x21

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 63
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x22

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 64
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/16 v1, 0x25

    aput-boolean v9, v2, v1

    return-void

    .line 65
    :catch_0
    move-exception v1

    const/16 v3, 0x23

    aput-boolean v9, v2, v3

    .line 66
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x24

    aput-boolean v9, v2, v1

    throw v3
.end method
