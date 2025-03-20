.class public Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV31;
.super Ljava/lang/Object;
.source "GlobalSettings.java"

# interfaces
.implements Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/GlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsUpgraderV31"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromOldSize(I)I
    .locals 1
    .param p0, "oldSize"    # I

    .prologue
    .line 401
    packed-switch p0, :pswitch_data_0

    .line 416
    :pswitch_0
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 403
    :pswitch_1
    const/16 v0, 0x28

    goto :goto_0

    .line 406
    :pswitch_2
    const/16 v0, 0x4b

    goto :goto_0

    .line 409
    :pswitch_3
    const/16 v0, 0xaf

    goto :goto_0

    .line 412
    :pswitch_4
    const/16 v0, 0xfa

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
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
    .line 391
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "fontSizeMessageViewContent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 393
    .local v1, "oldSize":I
    invoke-static {v1}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV31;->convertFromOldSize(I)I

    move-result v0

    .line 395
    .local v0, "newSize":I
    const-string v2, "fontSizeMessageViewContentPercent"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "fontSizeMessageViewContent"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method
