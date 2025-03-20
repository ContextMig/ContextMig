.class public Lorg/mozilla/focus/widget/LocaleListPreference;
.super Landroid/preference/ListPreference;
.source "LocaleListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;,
        Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;
    }
.end annotation


# static fields
.field private static final languageCodeToNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private characterValidator:Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;

.field private volatile entriesLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    .line 39
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "ast"

    const-string v2, "Asturianu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "cak"

    const-string v2, "Kaqchikel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "ia"

    const-string v2, "Interlingua"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "meh"

    const-string v2, "Tu\u00b4un savi \u00f1uu Yasi\'\u00ed Yuku Iti"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "mix"

    const-string v2, "Tu\'un savi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "trs"

    const-string v2, "Triqui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "zam"

    const-string v2, "D\u00ed\u0241zt\u00e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "oc"

    const-string v2, "occitan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "an"

    const-string v2, "Aragon\u00e9s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "tt"

    const-string v2, "\u0442\u0430\u0442\u0430\u0440\u0447\u0430"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "wo"

    const-string v2, "Wolof"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "anp"

    const-string v2, "\u0905\u0902\u0917\u093f\u0915\u093e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "ixl"

    const-string v2, "Ixil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "pai"

    const-string v2, "Paa ipai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "quy"

    const-string v2, "Chanka Qhichwa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "ay"

    const-string v2, "Aimara"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    const-string v1, "quc"

    const-string v2, "K\'iche\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/focus/widget/LocaleListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference;->languageCodeToNameMap:Ljava/util/Map;

    return-object v0
.end method

.method private buildList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 324
    .local v1, "currentLocale":Ljava/util/Locale;
    const-string v8, "GeckoLocaleList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Building locales list. Current locale: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v8, p0, Lorg/mozilla/focus/widget/LocaleListPreference;->entriesLocale:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 328
    const-string v8, "GeckoLocaleList"

    const-string v9, "No need to build list."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getUsableLocales()[Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    move-result-object v2

    .line 333
    .local v2, "descriptors":[Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;
    array-length v0, v2

    .line 335
    .local v0, "count":I
    iput-object v1, p0, Lorg/mozilla/focus/widget/LocaleListPreference;->entriesLocale:Ljava/util/Locale;

    .line 338
    add-int/lit8 v8, v0, 0x1

    new-array v4, v8, [Ljava/lang/String;

    .line 339
    .local v4, "entries":[Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 341
    .local v7, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f00de

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 342
    const-string v8, ""

    aput-object v8, v7, v11

    .line 344
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 345
    aget-object v8, v2, v5

    invoke-virtual {v8}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "displayName":Ljava/lang/String;
    aget-object v8, v2, v5

    invoke-virtual {v8}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "GeckoLocaleList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    add-int/lit8 v8, v5, 0x1

    aput-object v3, v4, v8

    .line 349
    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v8

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 352
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lorg/mozilla/focus/widget/LocaleListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0, v7}, Lorg/mozilla/focus/widget/LocaleListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSelectedLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lorg/mozilla/focus/locale/Locales;->parseLocaleCode(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method private getUsableLocales()[Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;
    .locals 11

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lorg/mozilla/focus/locale/LocaleManager;->getPackagedLocaleTags(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    .line 269
    .local v4, "shippingLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    .line 270
    .local v2, "initialCount":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 271
    .local v3, "locales":Ljava/util/Set;, "Ljava/util/Set<Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 272
    .local v5, "tag":Ljava/lang/String;
    new-instance v0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    invoke-direct {v0, v5}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "descriptor":Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;
    iget-object v8, p0, Lorg/mozilla/focus/widget/LocaleListPreference;->characterValidator:Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;

    invoke-virtual {v0, v8}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->isUsable(Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 275
    const-string v8, "GeckoLocaleList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping locale "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " on this device."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v0    # "descriptor":Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    .line 283
    .local v6, "usableCount":I
    new-array v7, v6, [Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    invoke-interface {v3, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    .line 284
    .local v1, "descriptors":[Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;
    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 285
    return-object v1
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    invoke-direct {v1, v0}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onAttachedToActivity()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/ListPreference;->onAttachedToActivity()V

    .line 139
    new-instance v0, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;

    const-string v1, " "

    invoke-direct {v0, v1}, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference;->characterValidator:Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;

    .line 141
    invoke-direct {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->buildList()V

    .line 142
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 296
    invoke-direct {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getSelectedLocale()Ljava/util/Locale;

    move-result-object v1

    .line 297
    .local v1, "selectedLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/LocaleListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/focus/locale/LocaleManager;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 299
    return-void
.end method
