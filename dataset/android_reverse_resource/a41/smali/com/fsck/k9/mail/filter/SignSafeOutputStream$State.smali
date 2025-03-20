.class abstract enum Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
.super Ljava/lang/Enum;
.source "SignSafeOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/filter/SignSafeOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum F_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum INIT:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum M_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum O_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum R_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum SPACE_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum cr_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

.field public static final enum lf_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$1;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->INIT:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 110
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$2;

    const-string v1, "lf_FROM"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->lf_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 124
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$3;

    const-string v1, "cr_FROM"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->cr_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 138
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$4;

    const-string v1, "F_FROM"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->F_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 152
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$5;

    const-string v1, "R_FROM"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->R_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 166
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$6;

    const-string v1, "O_FROM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->O_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 180
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$7;

    const-string v1, "M_FROM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->M_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 195
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$8;

    const-string v1, "SPACE_FROM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->SPACE_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    sget-object v1, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->INIT:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->lf_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->cr_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->F_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->R_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->O_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->M_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->SPACE_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->$VALUES:[Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/fsck/k9/mail/filter/SignSafeOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/fsck/k9/mail/filter/SignSafeOutputStream$1;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->$VALUES:[Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    return-object v0
.end method


# virtual methods
.method public abstract nextState(I)Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
.end method
