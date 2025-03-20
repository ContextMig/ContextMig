.class public Lorg/openintents/openpgp/util/OpenPgpAppPreference;
.super Landroid/preference/DialogPreference;
.source "OpenPgpAppPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;
    }
.end annotation


# static fields
.field private static final MARKET_INTENT:Landroid/content/Intent;

.field private static final MARKET_INTENT_URI_BASE:Ljava/lang/String; = "market://details?id=%s"

.field private static final OPENKEYCHAIN_PACKAGE:Ljava/lang/String; = "org.sufficientlysecure.keychain"

.field private static final PACKAGE_NAME_APG:Ljava/lang/String; = "org.thialfihar.android.apg"

.field private static final PROVIDER_BLACKLIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLegacyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "org.sufficientlysecure.keychain"

    aput-object v5, v3, v4

    .line 49
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->MARKET_INTENT:Landroid/content/Intent;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->PROVIDER_BLACKLIST:Ljava/util/ArrayList;

    .line 56
    sget-object v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->PROVIDER_BLACKLIST:Ljava/util/ArrayList;

    const-string v1, "org.thialfihar.android.apg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mLegacyList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    .line 66
    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->populateAppList()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/openintents/openpgp/util/OpenPgpAppPreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lorg/openintents/openpgp/util/OpenPgpAppPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpAppPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    return-object p1
.end method

.method private getIndexOfProviderList(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    .line 200
    .local v0, "app":Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;
    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->access$400(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 206
    .end local v0    # "app":Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isApgInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.openintents.openpgp.IOpenPgpService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "org.thialfihar.android.apg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 340
    .local v1, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private populateAppList()V
    .locals 17

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 262
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    new-instance v12, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    const-string v13, ""

    .line 263
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lorg/openintents/openpgp/R$string;->openpgp_list_preference_none:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lorg/openintents/openpgp/R$drawable;->ic_action_cancel_launchersize:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mLegacyList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    new-instance v3, Landroid/content/Intent;

    const-string v10, "org.openintents.openpgp.IOpenPgpService2"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 272
    .local v7, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 273
    .local v1, "hasNonBlacklistedChoices":Z
    if-eqz v7, :cond_1

    .line 274
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 275
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_0

    .line 279
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 280
    .local v6, "packageName":Ljava/lang/String;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 281
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 280
    invoke-virtual {v11, v12}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "simpleName":Ljava/lang/String;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 284
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v11, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->PROVIDER_BLACKLIST:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    new-instance v12, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    invoke-direct {v12, v6, v9, v2}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const/4 v1, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "simpleName":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 293
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    sget-object v11, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->MARKET_INTENT:Landroid/content/Intent;

    const/4 v12, 0x0

    .line 294
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 295
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 296
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    sget-object v11, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->MARKET_INTENT:Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 297
    .local v4, "marketIntent":Landroid/content/Intent;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 299
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 299
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "marketName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lorg/openintents/openpgp/R$string;->openpgp_install_openkeychain_via:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 303
    .restart local v9    # "simpleName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    new-instance v12, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    const-string v13, "org.sufficientlysecure.keychain"

    invoke-direct {v12, v13, v9, v2, v4}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "marketIntent":Landroid/content/Intent;
    .end local v5    # "marketName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "simpleName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private save()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setAndPersist(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAndPersist(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->persistString(Ljava/lang/String;)Z

    .line 182
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->notifyChanged()V

    .line 185
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->updateSummary(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private updateSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getEntryByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method


# virtual methods
.method public addLegacyProvider(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "simpleName"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mLegacyList:Ljava/util/ArrayList;

    new-instance v1, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    invoke-direct {v1, p2, p3, p4}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public addLegacyProvider(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "simpleName"    # Ljava/lang/String;
    .param p3, "iconRes"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mLegacyList:Ljava/util/ArrayList;

    new-instance v2, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    invoke-direct {v2, p1, p2, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getEntryByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryByValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    .line 250
    .local v0, "app":Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;
    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->access$400(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->access$200(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 251
    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->access$500(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .end local v0    # "app":Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/openintents/openpgp/R$string;->openpgp_list_preference_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getEntryByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 158
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->save()V

    .line 161
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->populateAppList()V

    .line 96
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$1;

    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090012

    const v4, 0x1020014

    iget-object v5, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$1;-><init>(Lorg/openintents/openpgp/util/OpenPgpAppPreference;Landroid/content/Context;IILjava/util/List;)V

    .line 115
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getIndexOfProviderList(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lorg/openintents/openpgp/util/OpenPgpAppPreference$2;

    invoke-direct {v2, p0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$2;-><init>(Lorg/openintents/openpgp/util/OpenPgpAppPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {p1, v6, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->mSelectedPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->updateSummary(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 242
    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setAndPersist(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->updateSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setAndPersist(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->showDialog(Landroid/os/Bundle;)V

    .line 311
    return-void
.end method
