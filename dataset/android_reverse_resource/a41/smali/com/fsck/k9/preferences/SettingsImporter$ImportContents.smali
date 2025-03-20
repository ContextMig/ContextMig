.class public Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportContents"
.end annotation


# instance fields
.field public final accounts:Ljava/util/List;
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


# direct methods
.method private constructor <init>(ZLjava/util/List;)V
    .locals 0
    .param p1, "globalSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->globalSettings:Z

    .line 57
    iput-object p2, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->accounts:Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(ZLjava/util/List;Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/fsck/k9/preferences/SettingsImporter$1;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;-><init>(ZLjava/util/List;)V

    return-void
.end method
