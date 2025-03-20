.class Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportedFolder"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/preferences/SettingsImporter$1;

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;-><init>()V

    return-void
.end method
