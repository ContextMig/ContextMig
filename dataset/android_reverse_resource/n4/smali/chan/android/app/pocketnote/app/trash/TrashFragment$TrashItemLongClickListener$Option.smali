.class abstract enum Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;
.super Ljava/lang/Enum;
.source "TrashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum REMOVE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

.field public static final enum RESTORE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;


# instance fields
.field final iconId:I

.field final name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x30ef026c68535c85L    # 5.484605049737358E-73

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoInit()[Z

    move-result-object v0

    .line 211
    new-instance v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$1;

    const-string v2, "REMOVE"

    const-string v3, "Delete permanently"

    const v4, 0x7f0200aa

    invoke-direct {v1, v2, v6, v3, v4}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$1;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->REMOVE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    .line 218
    new-instance v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;

    const-string v2, "RESTORE"

    const-string v3, "Restore"

    const v4, 0x7f02009e

    invoke-direct {v1, v2, v5, v3, v4}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->RESTORE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    .line 209
    const/4 v1, 0x2

    new-array v1, v1, [Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    sget-object v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->REMOVE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    aput-object v2, v1, v6

    sget-object v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->RESTORE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    aput-object v2, v1, v5

    sput-object v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$VALUES:[Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput-object p3, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->name:Ljava/lang/String;

    .line 230
    iput p4, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->iconId:I

    .line 231
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILchan/android/app/pocketnote/app/trash/TrashFragment$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoInit()[Z

    move-result-object v1

    .line 209
    const-class v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$jacocoInit()[Z

    move-result-object v1

    .line 209
    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->$VALUES:[Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    invoke-virtual {v0}, [Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public abstract choose(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V
.end method
