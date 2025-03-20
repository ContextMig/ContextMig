.class public abstract enum Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;
.super Ljava/lang/Enum;
.source "OnLongClickCalendarNoteListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum CHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field public static final enum EMAIL:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field public static final enum LOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field public static final enum REMINDER:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field public static final enum TRASH:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field public static final enum UNCHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

.field public static final enum UNLOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;


# instance fields
.field final iconId:I

.field final name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5d3d32de04509734L

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$1;

    const-string v2, "CHECK"

    const-string v3, "Check"

    const v4, 0x7f020088

    invoke-direct {v1, v2, v7, v3, v4}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$1;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->CHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 84
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2;

    const-string v2, "UNCHECK"

    const-string v3, "Uncheck"

    const v4, 0x7f0200a0

    invoke-direct {v1, v2, v6, v3, v4}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->UNCHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    .line 103
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;

    const-string v2, "LOCK"

    const-string v3, "Lock"

    const v4, 0x7f0200b0

    invoke-direct {v1, v2, v8, v3, v4}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->LOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    .line 118
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;

    const-string v2, "UNLOCK"

    const-string v3, "Unlock"

    const v4, 0x7f0200b4

    invoke-direct {v1, v2, v9, v3, v4}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->UNLOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    .line 132
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;

    const-string v2, "TRASH"

    const-string v3, "Delete"

    const v4, 0x7f0200aa

    invoke-direct {v1, v2, v10, v3, v4}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->TRASH:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 167
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$6;

    const-string v2, "REMINDER"

    const/4 v3, 0x5

    const-string v4, "Reminder"

    const v5, 0x7f020089

    invoke-direct {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$6;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->REMINDER:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    .line 188
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7;

    const-string v2, "EMAIL"

    const/4 v3, 0x6

    const-string v4, "Email"

    const v5, 0x7f0200ab

    invoke-direct {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->EMAIL:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    .line 63
    const/4 v1, 0x7

    new-array v1, v1, [Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    sget-object v2, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->CHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v2, v1, v7

    sget-object v2, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->UNCHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v2, v1, v6

    sget-object v2, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->LOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v2, v1, v8

    sget-object v2, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->UNLOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v2, v1, v9

    sget-object v2, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->TRASH:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v2, v1, v10

    const/4 v2, 0x5

    sget-object v3, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->REMINDER:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->EMAIL:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$VALUES:[Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

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
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput-object p3, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->name:Ljava/lang/String;

    .line 215
    iput p4, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->iconId:I

    .line 216
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoInit()[Z

    move-result-object v1

    .line 63
    const-class v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoInit()[Z

    move-result-object v1

    .line 63
    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$VALUES:[Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    invoke-virtual {v0}, [Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public askPassword(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->$jacocoInit()[Z

    move-result-object v6

    .line 221
    new-instance v2, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-direct {v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;-><init>()V

    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    .line 222
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v2, v0, v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    .line 223
    new-instance v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$8;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$8;-><init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v2, v0}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->setOnPasswordEnterListener(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;)V

    .line 234
    const/4 v0, 0x5

    aput-boolean v7, v6, v0

    return-void
.end method

.method public abstract choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
.end method
