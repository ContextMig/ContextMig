.class Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV12;
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
    name = "SettingsUpgraderV12"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/preferences/GlobalSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/preferences/GlobalSettings$1;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV12;-><init>()V

    return-void
.end method


# virtual methods
.method public upgrade(Ljava/util/Map;)Ljava/util/Set;
    .locals 3
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
    .line 345
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "keyguardPrivacy"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 346
    .local v0, "keyguardPrivacy":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "notificationHideSubject"

    sget-object v2, Lcom/fsck/k9/K9$NotificationHideSubject;->WHEN_LOCKED:Lcom/fsck/k9/K9$NotificationHideSubject;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "keyguardPrivacy"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 351
    :cond_0
    const-string v1, "notificationHideSubject"

    sget-object v2, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
