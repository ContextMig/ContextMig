.class synthetic Lcom/fsck/k9/preferences/GlobalSettings$1;
.super Ljava/lang/Object;
.source "GlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/GlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fsck$k9$K9$Theme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 494
    invoke-static {}, Lcom/fsck/k9/K9$Theme;->values()[Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/preferences/GlobalSettings$1;->$SwitchMap$com$fsck$k9$K9$Theme:[I

    :try_start_0
    sget-object v0, Lcom/fsck/k9/preferences/GlobalSettings$1;->$SwitchMap$com$fsck$k9$K9$Theme:[I

    sget-object v1, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
