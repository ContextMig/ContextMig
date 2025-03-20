.class public Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final RC_SIGN_IN:I = 0x2329


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

.field private mNavigationView:Landroid/support/design/widget/NavigationView;

.field private shoppingListsListView:Landroid/widget/ListView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6ef583f718ab065fL    # 3.185576072355139E226

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/MainActivity"

    const/16 v3, 0x87

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->TAG:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const/16 v2, 0x86

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static openAppRating(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 376
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x72

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x73

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 376
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/16 v1, 0x74

    aput-boolean v6, v0, v1

    .line 382
    :goto_0
    const/16 v1, 0x79

    aput-boolean v6, v0, v1

    return-void

    .line 378
    :catch_0
    move-exception v1

    const/16 v1, 0x75

    aput-boolean v6, v0, v1

    .line 379
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x76

    aput-boolean v6, v0, v4

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x77

    aput-boolean v6, v0, v2

    .line 379
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x78

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private openContactEmailIntent()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-boolean v7, v0, v2

    .line 335
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x51

    aput-boolean v7, v0, v3

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x52

    aput-boolean v7, v0, v4

    .line 338
    const-string v4, "\n\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x53

    aput-boolean v7, v0, v4

    .line 339
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x54

    aput-boolean v7, v0, v4

    .line 340
    const-string v4, "\nVersion: 1.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x55

    aput-boolean v7, v0, v4

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nLanguage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x56

    aput-boolean v7, v0, v4

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nSERIAL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x57

    aput-boolean v7, v0, v4

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nMODEL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    aput-boolean v7, v0, v4

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x59

    aput-boolean v7, v0, v4

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nManufacturer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5a

    aput-boolean v7, v0, v4

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nbrand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    aput-boolean v7, v0, v4

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ntype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5c

    aput-boolean v7, v0, v4

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nuser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    aput-boolean v7, v0, v4

    .line 349
    const-string v4, "\nBASE: 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5e

    aput-boolean v7, v0, v4

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nINCREMENTAL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    aput-boolean v7, v0, v4

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nSDK  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x60

    aput-boolean v7, v0, v4

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nBOARD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x61

    aput-boolean v7, v0, v4

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nBRAND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x62

    aput-boolean v7, v0, v4

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nHOST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x63

    aput-boolean v7, v0, v4

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nFINGERPRINT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    aput-boolean v7, v0, v4

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nVersion Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x65

    aput-boolean v7, v0, v4

    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    aput-boolean v7, v0, v4

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x67

    aput-boolean v7, v0, v5

    .line 360
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "subject"

    const/16 v6, 0x68

    aput-boolean v7, v0, v6

    .line 361
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "body"

    const/16 v5, 0x69

    aput-boolean v7, v0, v5

    .line 362
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const/16 v3, 0x6a

    aput-boolean v7, v0, v3

    .line 363
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x6b

    aput-boolean v7, v0, v3

    .line 364
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x6c

    aput-boolean v7, v0, v2

    .line 366
    const-string v2, "android.intent.extra.EMAIL"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x6d

    aput-boolean v7, v0, v1

    .line 369
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x6e

    aput-boolean v7, v0, v1

    .line 372
    :goto_0
    const/16 v1, 0x71

    aput-boolean v7, v0, v1

    return-void

    .line 369
    :cond_0
    const/16 v1, 0x6f

    aput-boolean v7, v0, v1

    .line 370
    invoke-virtual {p0, v3}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x70

    aput-boolean v7, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .prologue
    const v4, 0x800003

    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 239
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const/16 v2, 0x35

    aput-boolean v3, v1, v2

    .line 240
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x36

    aput-boolean v3, v1, v2

    .line 241
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/16 v0, 0x37

    aput-boolean v3, v1, v0

    .line 247
    :goto_0
    const/16 v0, 0x39

    aput-boolean v3, v1, v0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0, v3}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->moveTaskToBack(Z)Z

    const/16 v0, 0x38

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/16 v3, 0x24

    aput-boolean v7, v2, v3

    .line 196
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getAllShoppingLists()Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x25

    aput-boolean v7, v2, v4

    .line 197
    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v1, 0x26

    aput-boolean v7, v2, v1

    .line 199
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x27

    aput-boolean v7, v2, v1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 205
    .local v0, "menuItemIndex":I
    packed-switch v0, :pswitch_data_0

    .line 229
    const-string v1, "WTF?!"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const/16 v1, 0x33

    aput-boolean v7, v2, v1

    .line 233
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 234
    const/16 v1, 0x34

    aput-boolean v7, v2, v1

    return v7

    .line 207
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x28

    aput-boolean v7, v2, v6

    .line 208
    const-string v6, "shoppingListId"

    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v4, 0x29

    aput-boolean v7, v2, v4

    .line 209
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    const/16 v1, 0x2a

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->deleteShoppingList(J)Z

    const/16 v1, 0x2b

    aput-boolean v7, v2, v1

    .line 213
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v4}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getAllShoppingLists()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 214
    const/16 v1, 0x2c

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCursor(J)Landroid/database/Cursor;

    move-result-object v1

    const/16 v4, 0x2d

    aput-boolean v7, v2, v4

    .line 219
    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    aput-boolean v7, v2, v5

    .line 220
    const-string v5, "description"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    aput-boolean v7, v2, v6

    .line 222
    iget-object v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v6, v1, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->createShareString(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    aput-boolean v7, v2, v5

    .line 224
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x31

    aput-boolean v7, v2, v1

    .line 226
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-static {v4}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->createShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    const/16 v1, 0x32

    aput-boolean v7, v2, v1

    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v8, v7, v10

    .line 66
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->onCreate(Landroid/content/Context;)V

    aput-boolean v8, v7, v11

    .line 68
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->setTitle(I)V

    aput-boolean v8, v7, v9

    .line 70
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->setContentView(I)V

    const/4 v0, 0x5

    aput-boolean v8, v7, v0

    .line 73
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    .line 74
    invoke-virtual {p0, v3}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v0, 0x7

    aput-boolean v8, v7, v0

    .line 77
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    const/16 v1, 0x8

    aput-boolean v8, v7, v1

    .line 78
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    aput-boolean v8, v7, v0

    .line 87
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    const/16 v0, 0xa

    aput-boolean v8, v7, v0

    .line 88
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f070033

    const v5, 0x7f070032

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    const/16 v1, 0xb

    aput-boolean v8, v7, v1

    .line 90
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const/16 v1, 0xc

    aput-boolean v8, v7, v1

    .line 91
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    const/16 v0, 0xd

    aput-boolean v8, v7, v0

    .line 93
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/16 v0, 0xe

    aput-boolean v8, v7, v0

    .line 94
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const/16 v0, 0xf

    aput-boolean v8, v7, v0

    .line 97
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->shoppingListsListView:Landroid/widget/ListView;

    const/16 v0, 0x10

    aput-boolean v8, v7, v0

    .line 105
    new-instance v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const/16 v0, 0x11

    aput-boolean v8, v7, v0

    .line 108
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getAllShoppingLists()Landroid/database/Cursor;

    move-result-object v3

    const/16 v0, 0x12

    aput-boolean v8, v7, v0

    .line 111
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    const v2, 0x7f04002d

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    const-string v1, "modificationDate"

    aput-object v1, v4, v8

    const-string v1, "_id"

    aput-object v1, v4, v10

    const-string v1, "_id"

    aput-object v1, v4, v11

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/16 v0, 0x13

    aput-boolean v8, v7, v0

    .line 123
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->shoppingListsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x14

    aput-boolean v8, v7, v0

    .line 124
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    const/16 v0, 0x15

    aput-boolean v8, v7, v0

    .line 151
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->shoppingListsListView:Landroid/widget/ListView;

    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x16

    aput-boolean v8, v7, v0

    .line 164
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->shoppingListsListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    const/16 v0, 0x17

    aput-boolean v8, v7, v0

    .line 166
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->shoppingListsListView:Landroid/widget/ListView;

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 167
    const/16 v0, 0x18

    aput-boolean v8, v7, v0

    return-void

    .line 111
    nop

    :array_0
    .array-data 4
        0x7f0f009e
        0x7f0f00a1
        0x7f0f00a0
        0x7f0f009f
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f008b

    if-eq v4, v5, :cond_0

    const/16 v2, 0x19

    aput-boolean v7, v3, v2

    .line 190
    .local v1, "menuItems":[Ljava/lang/String;
    :goto_0
    const/16 v2, 0x23

    aput-boolean v7, v3, v2

    return-void

    .line 173
    .end local v1    # "menuItems":[Ljava/lang/String;
    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/16 v4, 0x1a

    aput-boolean v7, v3, v4

    .line 176
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v4}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getAllShoppingLists()Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0x1b

    aput-boolean v7, v3, v5

    .line 177
    iget v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v5, 0x1c

    aput-boolean v7, v3, v5

    .line 178
    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1d

    aput-boolean v7, v3, v6

    .line 180
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/16 v5, 0x1e

    aput-boolean v7, v3, v5

    .line 183
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .restart local v1    # "menuItems":[Ljava/lang/String;
    const/16 v5, 0x1f

    aput-boolean v7, v3, v5

    move v0, v2

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_1

    const/16 v5, 0x20

    aput-boolean v7, v3, v5

    .line 185
    aget-object v5, v1, v0

    invoke-interface {p1, v2, v0, v0, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 184
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v5, 0x21

    aput-boolean v7, v3, v5

    goto :goto_1

    .line 188
    .end local v0    # "i":I
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x22

    aput-boolean v7, v3, v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 314
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/16 v1, 0x4a

    aput-boolean v3, v0, v1

    .line 316
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->closeDb()V

    const/16 v1, 0x4b

    aput-boolean v3, v0, v1

    .line 317
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v1, 0x4c

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 289
    .local v0, "id":I
    const v1, 0x7f0f00b6

    if-ne v0, v1, :cond_0

    const/16 v1, 0x3d

    aput-boolean v7, v2, v1

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lpl/com/andrzejgrzyb/shoppinglist/SettingsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e

    aput-boolean v7, v2, v3

    .line 291
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    const/16 v1, 0x3f

    aput-boolean v7, v2, v1

    .line 305
    :goto_0
    const v1, 0x7f0f0084

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    const/16 v3, 0x48

    aput-boolean v7, v2, v3

    .line 306
    const v3, 0x800003

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 307
    const/16 v1, 0x49

    aput-boolean v7, v2, v1

    return v7

    .line 292
    :cond_0
    const v1, 0x7f0f00b8

    if-ne v0, v1, :cond_1

    const/16 v1, 0x40

    aput-boolean v7, v2, v1

    .line 293
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070043

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x41

    aput-boolean v7, v2, v3

    .line 294
    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->createShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    const/16 v1, 0x42

    aput-boolean v7, v2, v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0f00ba

    if-ne v0, v1, :cond_2

    const/16 v1, 0x43

    aput-boolean v7, v2, v1

    .line 296
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->openContactEmailIntent()V

    const/16 v1, 0x44

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 297
    :cond_2
    const v1, 0x7f0f00b9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x45

    aput-boolean v7, v2, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x46

    aput-boolean v7, v2, v1

    .line 298
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->openAppRating(Landroid/content/Context;)V

    const/16 v1, 0x47

    aput-boolean v7, v2, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    .line 273
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x3c

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 486
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 488
    const-string v1, "jacoco"

    const/16 v3, 0x7a

    aput-boolean v9, v2, v3

    .line 491
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x7b

    aput-boolean v9, v2, v3

    .line 492
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

    const/16 v4, 0x7c

    aput-boolean v9, v2, v4

    .line 493
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x7d

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 495
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x7e

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 496
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 497
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x7f

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 498
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x80

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 497
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x81

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 500
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

    const/16 v3, 0x82

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 501
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    const/16 v1, 0x85

    aput-boolean v9, v2, v1

    return-void

    .line 502
    :catch_0
    move-exception v1

    const/16 v3, 0x83

    aput-boolean v9, v2, v3

    .line 503
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x84

    aput-boolean v9, v2, v1

    throw v3
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 323
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/16 v1, 0x4d

    aput-boolean v2, v0, v1

    .line 324
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->cursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 325
    const/16 v1, 0x4e

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 329
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 330
    const/16 v1, 0x4f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
