.class Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;
.super Ljava/lang/Object;
.source "OpenPgpAppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/OpenPgpAppPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenPgpProviderEntry"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private packageName:Ljava/lang/String;

.field private simpleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "simpleName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->packageName:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 323
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "simpleName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    invoke-direct {p0, p1, p2, p3}, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 327
    iput-object p4, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    .line 328
    return-void
.end method

.method static synthetic access$100(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpAppPreference$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    return-object v0
.end method
