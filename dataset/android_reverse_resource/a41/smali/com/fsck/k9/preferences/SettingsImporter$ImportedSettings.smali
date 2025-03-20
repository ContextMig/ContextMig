.class Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportedSettings"
.end annotation


# instance fields
.field public settings:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/preferences/SettingsImporter$1;

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;-><init>()V

    return-void
.end method
