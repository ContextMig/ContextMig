.class public Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportResults"
.end annotation


# instance fields
.field public final erroneousAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final globalSettings:Z

.field public final importedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "globalSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "importedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;>;"
    .local p3, "erroneousAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->globalSettings:Z

    .line 91
    iput-object p2, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->importedAccounts:Ljava/util/List;

    .line 92
    iput-object p3, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->erroneousAccounts:Ljava/util/List;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(ZLjava/util/List;Ljava/util/List;Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/fsck/k9/preferences/SettingsImporter$1;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;-><init>(ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
