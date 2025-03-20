.class final enum Lcom/dropbox/sync/android/GandalfOverrideRule;
.super Ljava/lang/Enum;
.source "GandalfOverrideRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/GandalfOverrideRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/GandalfOverrideRule;

.field public static final enum ALWAYS:Lcom/dropbox/sync/android/GandalfOverrideRule;

.field public static final enum NEVER:Lcom/dropbox/sync/android/GandalfOverrideRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/dropbox/sync/android/GandalfOverrideRule;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/GandalfOverrideRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/GandalfOverrideRule;->NEVER:Lcom/dropbox/sync/android/GandalfOverrideRule;

    .line 14
    new-instance v0, Lcom/dropbox/sync/android/GandalfOverrideRule;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/GandalfOverrideRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/GandalfOverrideRule;->ALWAYS:Lcom/dropbox/sync/android/GandalfOverrideRule;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/sync/android/GandalfOverrideRule;

    sget-object v1, Lcom/dropbox/sync/android/GandalfOverrideRule;->NEVER:Lcom/dropbox/sync/android/GandalfOverrideRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/GandalfOverrideRule;->ALWAYS:Lcom/dropbox/sync/android/GandalfOverrideRule;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/sync/android/GandalfOverrideRule;->$VALUES:[Lcom/dropbox/sync/android/GandalfOverrideRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/GandalfOverrideRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/dropbox/sync/android/GandalfOverrideRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/GandalfOverrideRule;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/GandalfOverrideRule;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dropbox/sync/android/GandalfOverrideRule;->$VALUES:[Lcom/dropbox/sync/android/GandalfOverrideRule;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/GandalfOverrideRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/GandalfOverrideRule;

    return-object v0
.end method
