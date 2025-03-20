.class Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV24;
.super Ljava/lang/Object;
.source "GlobalSettings.java"

# interfaces
.implements Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/GlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsUpgraderV24"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/preferences/GlobalSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/preferences/GlobalSettings$1;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV24;-><init>()V

    return-void
.end method


# virtual methods
.method public upgrade(Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "messageViewTheme"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$Theme;

    .line 370
    .local v0, "messageViewTheme":Lcom/fsck/k9/K9$Theme;
    const-string v2, "theme"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/K9$Theme;

    .line 371
    .local v1, "theme":Lcom/fsck/k9/K9$Theme;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ne v1, v0, :cond_0

    .line 372
    const-string v2, "messageViewTheme"

    sget-object v3, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
