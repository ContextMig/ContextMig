.class public Lde/cketti/library/changelog/ChangeLog;
.super Ljava/lang/Object;
.source "ChangeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/cketti/library/changelog/ChangeLog$ReleaseItem;,
        Lde/cketti/library/changelog/ChangeLog$ChangeTag;,
        Lde/cketti/library/changelog/ChangeLog$ReleaseTag;,
        Lde/cketti/library/changelog/ChangeLog$ChangeLogTag;
    }
.end annotation


# static fields
.field public static final DEFAULT_CSS:Ljava/lang/String; = "h1 { margin-left: 0px; font-size: 1.2em; }\nli { margin-left: 0px; }\nul { padding-left: 2em; }"

.field protected static final LOG_TAG:Ljava/lang/String; = "ckChangeLog"

.field protected static final NO_VERSION:I = -0x1

.field protected static final VERSION_KEY:Ljava/lang/String; = "ckChangeLog_last_version_code"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mCss:Ljava/lang/String;

.field private mCurrentVersionCode:I

.field private mCurrentVersionName:Ljava/lang/String;

.field private mLastVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "h1 { margin-left: 0px; font-size: 1.2em; }\nli { margin-left: 0px; }\nul { padding-left: 2em; }"

    invoke-direct {p0, p1, v0, v1}, Lde/cketti/library/changelog/ChangeLog;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;
    .param p3, "css"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    .line 170
    iput-object p3, p0, Lde/cketti/library/changelog/ChangeLog;->mCss:Ljava/lang/String;

    .line 173
    const-string v2, "ckChangeLog_last_version_code"

    invoke-interface {p2, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lde/cketti/library/changelog/ChangeLog;->mLastVersionCode:I

    .line 177
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 180
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionCode:I

    .line 181
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput v5, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionCode:I

    .line 184
    const-string v2, "ckChangeLog"

    const-string v3, "Could not get version information from manifest!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "css"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lde/cketti/library/changelog/ChangeLog;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private parseReleaseTag(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/util/SparseArray;)Z
    .locals 9
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "changelog":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lde/cketti/library/changelog/ChangeLog$ReleaseItem;>;"
    const/4 v8, 0x0

    .line 520
    const-string v7, "version"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "version":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    const-string v8, "versioncode"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, "versionCodeStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 530
    .end local v6    # "versionCodeStr":Ljava/lang/String;
    .local v5, "versionCode":I
    :goto_0
    if-nez p2, :cond_0

    iget v7, p0, Lde/cketti/library/changelog/ChangeLog;->mLastVersionCode:I

    if-gt v5, v7, :cond_0

    .line 531
    const/4 v7, 0x1

    .line 548
    :goto_1
    return v7

    .line 526
    .end local v5    # "versionCode":I
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    .restart local v5    # "versionCode":I
    goto :goto_0

    .line 534
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 535
    .local v2, "eventType":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "changes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "change"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    :cond_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "change"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 538
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 540
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    .line 545
    :cond_3
    new-instance v3, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;

    invoke-direct {v3, v5, v4, v0}, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 546
    .local v3, "release":Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
    invoke-virtual {p3, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getChangeLog(Z)Ljava/util/List;
    .locals 8
    .param p1, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lde/cketti/library/changelog/ChangeLog;->getMasterChangeLog(Z)Landroid/util/SparseArray;

    move-result-object v4

    .line 403
    .local v4, "masterChangelog":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lde/cketti/library/changelog/ChangeLog$ReleaseItem;>;"
    invoke-virtual {p0, p1}, Lde/cketti/library/changelog/ChangeLog;->getLocalizedChangeLog(Z)Landroid/util/SparseArray;

    move-result-object v0

    .line 405
    .local v0, "changelog":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lde/cketti/library/changelog/ChangeLog$ReleaseItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v5, "mergedChangeLog":Ljava/util/List;, "Ljava/util/List<Lde/cketti/library/changelog/ChangeLog$ReleaseItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 409
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 413
    .local v2, "key":I
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;

    .line 415
    .local v6, "release":Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v2    # "key":I
    .end local v6    # "release":Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
    :cond_0
    invoke-virtual {p0}, Lde/cketti/library/changelog/ChangeLog;->getChangeLogComparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 420
    return-object v5
.end method

.method protected getChangeLogComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Lde/cketti/library/changelog/ChangeLog$3;

    invoke-direct {v0, p0}, Lde/cketti/library/changelog/ChangeLog$3;-><init>(Lde/cketti/library/changelog/ChangeLog;)V

    return-object v0
.end method

.method public getCurrentVersionCode()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionCode:I

    return v0
.end method

.method public getCurrentVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionName:Ljava/lang/String;

    return-object v0
.end method

.method protected getDialog(Z)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "full"    # Z

    .prologue
    const/4 v1, 0x0

    .line 285
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, "wv":Landroid/webkit/WebView;
    invoke-virtual {p0, p1}, Lde/cketti/library/changelog/ChangeLog;->getLog(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    sget v1, Lde/cketti/library/changelog/R$string;->changelog_full_title:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lde/cketti/library/changelog/R$string;->changelog_ok_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lde/cketti/library/changelog/ChangeLog$1;

    invoke-direct {v3, p0}, Lde/cketti/library/changelog/ChangeLog$1;-><init>(Lde/cketti/library/changelog/ChangeLog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    if-nez p1, :cond_0

    .line 309
    sget v1, Lde/cketti/library/changelog/R$string;->changelog_show_full:I

    new-instance v2, Lde/cketti/library/changelog/ChangeLog$2;

    invoke-direct {v2, p0}, Lde/cketti/library/changelog/ChangeLog$2;-><init>(Lde/cketti/library/changelog/ChangeLog;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    :cond_0
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 290
    :cond_1
    sget v1, Lde/cketti/library/changelog/R$string;->changelog_title:I

    goto :goto_0
.end method

.method public getFullLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/cketti/library/changelog/ChangeLog;->getLog(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullLogDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/cketti/library/changelog/ChangeLog;->getDialog(Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getLastVersionCode()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lde/cketti/library/changelog/ChangeLog;->mLastVersionCode:I

    return v0
.end method

.method protected getLocalizedChangeLog(Z)Landroid/util/SparseArray;
    .locals 1
    .param p1, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/SparseArray",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    sget v0, Lde/cketti/library/changelog/R$xml;->changelog:I

    invoke-virtual {p0, v0, p1}, Lde/cketti/library/changelog/ChangeLog;->readChangeLogFromResource(IZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/cketti/library/changelog/ChangeLog;->getLog(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLog(Z)Ljava/lang/String;
    .locals 10
    .param p1, "full"    # Z

    .prologue
    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "<html><head><style type=\"text/css\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v7, p0, Lde/cketti/library/changelog/ChangeLog;->mCss:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v7, "</style></head><body>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v7, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lde/cketti/library/changelog/R$string;->changelog_version_format:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "versionFormat":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lde/cketti/library/changelog/ChangeLog;->getChangeLog(Z)Ljava/util/List;

    move-result-object v1

    .line 372
    .local v1, "changelog":Ljava/util/List;, "Ljava/util/List<Lde/cketti/library/changelog/ChangeLog$ReleaseItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;

    .line 373
    .local v4, "release":Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
    const-string v7, "<h1>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v4, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v7, "</h1><ul>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v7, v4, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->changes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    .local v0, "change":Ljava/lang/String;
    const-string v7, "<li>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v7, "</li>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 381
    .end local v0    # "change":Ljava/lang/String;
    :cond_0
    const-string v7, "</ul>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "release":Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
    :cond_1
    const-string v7, "</body></html>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getLogDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lde/cketti/library/changelog/ChangeLog;->isFirstRunEver()Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/cketti/library/changelog/ChangeLog;->getDialog(Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected getMasterChangeLog(Z)Landroid/util/SparseArray;
    .locals 1
    .param p1, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/SparseArray",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    sget v0, Lde/cketti/library/changelog/R$xml;->changelog_master:I

    invoke-virtual {p0, v0, p1}, Lde/cketti/library/changelog/ChangeLog;->readChangeLogFromResource(IZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRun()Z
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lde/cketti/library/changelog/ChangeLog;->mLastVersionCode:I

    iget v1, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionCode:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstRunEver()Z
    .locals 2

    .prologue
    .line 240
    iget v0, p0, Lde/cketti/library/changelog/ChangeLog;->mLastVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readChangeLog(Lorg/xmlpull/v1/XmlPullParser;Z)Landroid/util/SparseArray;
    .locals 5
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z)",
            "Landroid/util/SparseArray",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 477
    .local v2, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lde/cketti/library/changelog/ChangeLog$ReleaseItem;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 478
    .local v1, "eventType":I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 479
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    invoke-direct {p0, p1, p2, v2}, Lde/cketti/library/changelog/ChangeLog;->parseReleaseTag(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    .end local v1    # "eventType":I
    :cond_0
    :goto_1
    return-object v2

    .line 486
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 488
    .end local v1    # "eventType":I
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "ckChangeLog"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 490
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 491
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ckChangeLog"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected final readChangeLogFromResource(IZ)Landroid/util/SparseArray;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/SparseArray",
            "<",
            "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 456
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lde/cketti/library/changelog/ChangeLog;->readChangeLog(Lorg/xmlpull/v1/XmlPullParser;Z)Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 458
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public skipLogDialog()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lde/cketti/library/changelog/ChangeLog;->updateVersionInPreferences()V

    .line 253
    return-void
.end method

.method protected updateVersionInPreferences()V
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lde/cketti/library/changelog/ChangeLog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ckChangeLog_last_version_code"

    iget v3, p0, Lde/cketti/library/changelog/ChangeLog;->mCurrentVersionCode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    return-void
.end method
