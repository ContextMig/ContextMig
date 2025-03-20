.class public Lchan/android/app/pocketnote/app/Note;
.super Ljava/lang/Object;
.source "Note.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lchan/android/app/pocketnote/app/Note;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final BUNDLE_KEY:Ljava/lang/String; = "note_bundle_key"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checked:Z

.field private color:I

.field private content:Ljava/lang/String;

.field private day:I

.field private deletedTime:J

.field private locked:Z

.field private modifiedTime:J

.field private month:I

.field private reminder:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trashed:Z

.field private year:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/Note;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x17ad538dfa81b469L

    const-string v2, "chan/android/app/pocketnote/app/Note"

    const/16 v3, 0x7f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/Note;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    new-instance v1, Lchan/android/app/pocketnote/app/Note$1;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/Note$1;-><init>()V

    sput-object v1, Lchan/android/app/pocketnote/app/Note;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x7e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aput-boolean v1, v3, v1

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lchan/android/app/pocketnote/app/Note;->trashed:Z

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lchan/android/app/pocketnote/app/Note;->locked:Z

    const/16 v0, 0xc

    aput-boolean v1, v3, v0

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    aput-boolean v1, v3, v0

    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lchan/android/app/pocketnote/app/Note;->checked:Z

    const/16 v0, 0xf

    aput-boolean v1, v3, v0

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    const/16 v0, 0x10

    aput-boolean v1, v3, v0

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/Note;->year:I

    const/16 v0, 0x11

    aput-boolean v1, v3, v0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/Note;->month:I

    const/16 v0, 0x12

    aput-boolean v1, v3, v0

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/Note;->day:I

    .line 102
    const/16 v0, 0x13

    aput-boolean v1, v3, v0

    return-void

    .line 95
    :cond_0
    const/16 v0, 0x8

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 96
    :cond_1
    const/16 v0, 0xb

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 97
    :cond_2
    const/16 v0, 0xe

    aput-boolean v1, v3, v0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    .line 78
    iput p5, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    .line 79
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    .line 80
    iput-boolean v4, p0, Lchan/android/app/pocketnote/app/Note;->trashed:Z

    .line 81
    iput-boolean v4, p0, Lchan/android/app/pocketnote/app/Note;->locked:Z

    .line 82
    iput-boolean v4, p0, Lchan/android/app/pocketnote/app/Note;->checked:Z

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    .line 84
    iput v5, p0, Lchan/android/app/pocketnote/app/Note;->year:I

    .line 85
    iput v5, p0, Lchan/android/app/pocketnote/app/Note;->month:I

    .line 86
    iput v5, p0, Lchan/android/app/pocketnote/app/Note;->year:I

    .line 87
    const/4 v1, 0x1

    aput-boolean v1, v0, v4

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lchan/android/app/pocketnote/app/Note;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v9

    .line 105
    new-instance v1, Lchan/android/app/pocketnote/app/Note;

    const-string v0, "title"

    const/16 v2, 0x14

    aput-boolean v7, v9, v2

    .line 106
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "content"

    const/16 v3, 0x15

    aput-boolean v7, v9, v3

    .line 107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "modified_time"

    const/16 v4, 0x16

    aput-boolean v7, v9, v4

    .line 108
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "color"

    const/16 v6, 0x17

    aput-boolean v7, v9, v6

    .line 109
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lchan/android/app/pocketnote/app/Note;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    const/16 v0, 0x18

    aput-boolean v7, v9, v0

    .line 111
    const-string v0, "locked"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    const/16 v0, 0x19

    aput-boolean v7, v9, v0

    move v0, v7

    :goto_0
    const/16 v2, 0x1b

    aput-boolean v7, v9, v2

    .line 112
    invoke-virtual {v1, v0}, Lchan/android/app/pocketnote/app/Note;->setLocked(Z)V

    const/16 v0, 0x1c

    aput-boolean v7, v9, v0

    .line 115
    const-string v0, "trashed"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    const/16 v0, 0x1d

    aput-boolean v7, v9, v0

    move v0, v7

    :goto_1
    const/16 v2, 0x1f

    aput-boolean v7, v9, v2

    .line 116
    invoke-virtual {v1, v0}, Lchan/android/app/pocketnote/app/Note;->setTrashed(Z)V

    const/16 v2, 0x20

    aput-boolean v7, v9, v2

    .line 118
    const-string v2, "checked"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v7, :cond_2

    const/16 v2, 0x21

    aput-boolean v7, v9, v2

    move v8, v7

    :goto_2
    const/16 v2, 0x23

    aput-boolean v7, v9, v2

    .line 119
    invoke-virtual {v1, v8}, Lchan/android/app/pocketnote/app/Note;->setChecked(Z)V

    .line 121
    if-nez v0, :cond_3

    const/16 v0, 0x24

    aput-boolean v7, v9, v0

    .line 125
    :goto_3
    const-string v0, "reminder_json"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-boolean v7, v9, v2

    .line 126
    invoke-static {v0}, Lchan/android/app/pocketnote/util/TextUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x28

    aput-boolean v7, v9, v0

    .line 131
    :goto_4
    const-string v0, "calendar_day"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x2b

    aput-boolean v7, v9, v2

    .line 132
    invoke-virtual {v1, v0}, Lchan/android/app/pocketnote/app/Note;->setDay(I)V

    const/16 v0, 0x2c

    aput-boolean v7, v9, v0

    .line 134
    const-string v0, "calendar_month"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x2d

    aput-boolean v7, v9, v2

    .line 135
    invoke-virtual {v1, v0}, Lchan/android/app/pocketnote/app/Note;->setMonth(I)V

    const/16 v0, 0x2e

    aput-boolean v7, v9, v0

    .line 137
    const-string v0, "calendar_year"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x2f

    aput-boolean v7, v9, v2

    .line 138
    invoke-virtual {v1, v0}, Lchan/android/app/pocketnote/app/Note;->setYear(I)V

    .line 140
    const/16 v0, 0x30

    aput-boolean v7, v9, v0

    return-object v1

    .line 111
    :cond_0
    const/16 v0, 0x1a

    aput-boolean v7, v9, v0

    move v0, v8

    goto/16 :goto_0

    .line 115
    :cond_1
    const/16 v0, 0x1e

    aput-boolean v7, v9, v0

    move v0, v8

    goto/16 :goto_1

    .line 118
    :cond_2
    const/16 v2, 0x22

    aput-boolean v7, v9, v2

    goto :goto_2

    .line 121
    :cond_3
    const/16 v0, 0x25

    aput-boolean v7, v9, v0

    .line 122
    const-string v0, "deleted_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/Note;->setDeletedTime(J)V

    const/16 v0, 0x26

    aput-boolean v7, v9, v0

    goto :goto_3

    .line 126
    :cond_4
    const/16 v2, 0x29

    aput-boolean v7, v9, v2

    .line 127
    invoke-virtual {v1, v0}, Lchan/android/app/pocketnote/app/Note;->setReminder(Ljava/lang/String;)V

    const/16 v0, 0x2a

    aput-boolean v7, v9, v0

    goto :goto_4
.end method


# virtual methods
.method public compareTo(Lchan/android/app/pocketnote/app/Note;)I
    .locals 8

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v2

    .line 294
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 295
    const/16 v1, 0x7a

    aput-boolean v0, v2, v1

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 297
    const/4 v1, -0x1

    const/16 v3, 0x7b

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v1, 0x0

    const/16 v3, 0x7c

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    check-cast p1, Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/Note;->compareTo(Lchan/android/app/pocketnote/app/Note;)I

    move-result v1

    const/16 v2, 0x7d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    const/16 v2, 0x6a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v3

    .line 241
    if-ne p0, p1, :cond_0

    const/16 v2, 0x48

    aput-boolean v1, v3, v2

    .line 251
    .local v0, "note":Lchan/android/app/pocketnote/app/Note;
    :goto_0
    return v1

    .line 242
    .end local v0    # "note":Lchan/android/app/pocketnote/app/Note;
    :cond_0
    instance-of v4, p1, Lchan/android/app/pocketnote/app/Note;

    if-nez v4, :cond_1

    const/16 v4, 0x49

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 244
    check-cast v0, Lchan/android/app/pocketnote/app/Note;

    .line 246
    .restart local v0    # "note":Lchan/android/app/pocketnote/app/Note;
    iget v4, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    iget v5, v0, Lchan/android/app/pocketnote/app/Note;->color:I

    if-eq v4, v5, :cond_2

    const/16 v4, 0x4a

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    .line 247
    :cond_2
    iget-wide v4, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    iget-wide v6, v0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/16 v4, 0x4b

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    .line 248
    :cond_3
    iget-object v4, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    iget-object v5, v0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4c

    aput-boolean v1, v3, v4

    .line 249
    :goto_1
    iget-object v4, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    iget-object v5, v0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v2, 0x51

    aput-boolean v1, v3, v2

    .line 251
    :goto_2
    const/16 v2, 0x56

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 248
    :cond_4
    const/16 v4, 0x4d

    aput-boolean v1, v3, v4

    :goto_3
    const/16 v4, 0x50

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v4, v0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    if-nez v4, :cond_6

    const/16 v4, 0x4e

    aput-boolean v1, v3, v4

    goto :goto_1

    :cond_6
    const/16 v4, 0x4f

    aput-boolean v1, v3, v4

    goto :goto_3

    .line 249
    :cond_7
    const/16 v4, 0x52

    aput-boolean v1, v3, v4

    :goto_4
    const/16 v4, 0x55

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v4, v0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    if-nez v4, :cond_9

    const/16 v2, 0x53

    aput-boolean v1, v3, v2

    goto :goto_2

    :cond_9
    const/16 v4, 0x54

    aput-boolean v1, v3, v4

    goto :goto_4
.end method

.method public getColor()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 200
    iget v1, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    const/16 v2, 0x3e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 192
    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    const/16 v2, 0x3c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDay()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    iget v1, p0, Lchan/android/app/pocketnote/app/Note;->day:I

    const/16 v2, 0x42

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getDeletedTime()J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    iget-wide v2, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    const/16 v1, 0x31

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getModifiedTime()J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    iget-wide v2, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    const/16 v1, 0x37

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getMonth()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 224
    iget v1, p0, Lchan/android/app/pocketnote/app/Note;->month:I

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getReminder()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 208
    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    const/16 v2, 0x40

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    const/16 v2, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getYear()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 232
    iget v1, p0, Lchan/android/app/pocketnote/app/Note;->year:I

    const/16 v2, 0x46

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v4

    .line 280
    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v5, 0x6b

    aput-boolean v3, v4, v5

    :goto_0
    const/16 v5, 0x6d

    aput-boolean v3, v4, v5

    .line 281
    mul-int/lit8 v5, v1, 0x1f

    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x6e

    aput-boolean v3, v4, v6

    :goto_1
    add-int v0, v5, v1

    .line 282
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    iget-wide v8, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 283
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    add-int v0, v1, v5

    .line 284
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    iget-wide v8, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 285
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/Note;->trashed:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x70

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_2
    add-int v0, v5, v1

    .line 286
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/Note;->locked:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x72

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_3
    add-int v0, v5, v1

    .line 287
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/Note;->checked:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x74

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_4
    add-int v0, v5, v1

    const/16 v1, 0x76

    aput-boolean v3, v4, v1

    .line 288
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v2, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x77

    aput-boolean v3, v4, v5

    :goto_5
    add-int v0, v1, v2

    .line 289
    const/16 v1, 0x79

    aput-boolean v3, v4, v1

    return v0

    .line 280
    .end local v0    # "result":I
    :cond_0
    const/16 v1, 0x6c

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_0

    .line 281
    :cond_1
    const/16 v1, 0x6f

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_1

    .line 285
    .restart local v0    # "result":I
    :cond_2
    const/16 v1, 0x71

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_2

    .line 286
    :cond_3
    const/16 v1, 0x73

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_3

    .line 287
    :cond_4
    const/16 v1, 0x75

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_4

    .line 288
    :cond_5
    const/16 v5, 0x78

    aput-boolean v3, v4, v5

    goto :goto_5
.end method

.method public isChecked()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/Note;->checked:Z

    const/16 v2, 0x33

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isLocked()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/Note;->locked:Z

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isTrashed()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/Note;->trashed:Z

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    iput-boolean p1, p0, Lchan/android/app/pocketnote/app/Note;->checked:Z

    .line 157
    const/16 v1, 0x34

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    iput p1, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    .line 205
    const/16 v1, 0x3f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 196
    iput-object p1, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    .line 197
    const/16 v1, 0x3d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDay(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 220
    iput p1, p0, Lchan/android/app/pocketnote/app/Note;->day:I

    .line 221
    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDeletedTime(J)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    iput-wide p1, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    .line 149
    const/16 v1, 0x32

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setLocked(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 180
    iput-boolean p1, p0, Lchan/android/app/pocketnote/app/Note;->locked:Z

    .line 181
    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setMonth(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    iput p1, p0, Lchan/android/app/pocketnote/app/Note;->month:I

    .line 229
    const/16 v1, 0x45

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setReminder(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    iput-object p1, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    .line 213
    const/16 v1, 0x41

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 188
    iput-object p1, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    .line 189
    const/16 v1, 0x3b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTrashed(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 164
    iput-boolean p1, p0, Lchan/android/app/pocketnote/app/Note;->trashed:Z

    .line 165
    const/16 v1, 0x36

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setYear(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v0

    .line 236
    iput p1, p0, Lchan/android/app/pocketnote/app/Note;->year:I

    .line 237
    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/Note;->$jacocoInit()[Z

    move-result-object v3

    .line 256
    iget-object v0, p0, Lchan/android/app/pocketnote/app/Note;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x57

    aput-boolean v1, v3, v0

    .line 257
    iget-object v0, p0, Lchan/android/app/pocketnote/app/Note;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x58

    aput-boolean v1, v3, v0

    .line 258
    iget-wide v4, p0, Lchan/android/app/pocketnote/app/Note;->modifiedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0x59

    aput-boolean v1, v3, v0

    .line 259
    iget v0, p0, Lchan/android/app/pocketnote/app/Note;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x5a

    aput-boolean v1, v3, v0

    .line 260
    iget-wide v4, p0, Lchan/android/app/pocketnote/app/Note;->deletedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0x5b

    aput-boolean v1, v3, v0

    .line 261
    iget-boolean v0, p0, Lchan/android/app/pocketnote/app/Note;->trashed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    const/16 v0, 0x5e

    aput-boolean v1, v3, v0

    .line 262
    iget-boolean v0, p0, Lchan/android/app/pocketnote/app/Note;->locked:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x5f

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    const/16 v0, 0x61

    aput-boolean v1, v3, v0

    .line 263
    iget-boolean v0, p0, Lchan/android/app/pocketnote/app/Note;->checked:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x62

    aput-boolean v1, v3, v0

    move v2, v1

    :goto_2
    int-to-byte v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 264
    iget-object v0, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    if-nez v0, :cond_3

    const/16 v0, 0x64

    aput-boolean v1, v3, v0

    .line 268
    :goto_3
    iget v0, p0, Lchan/android/app/pocketnote/app/Note;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x67

    aput-boolean v1, v3, v0

    .line 269
    iget v0, p0, Lchan/android/app/pocketnote/app/Note;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x68

    aput-boolean v1, v3, v0

    .line 270
    iget v0, p0, Lchan/android/app/pocketnote/app/Note;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/16 v0, 0x69

    aput-boolean v1, v3, v0

    return-void

    .line 261
    :cond_0
    const/16 v0, 0x5d

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 262
    :cond_1
    const/16 v0, 0x60

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 263
    :cond_2
    const/16 v0, 0x63

    aput-boolean v1, v3, v0

    goto :goto_2

    .line 264
    :cond_3
    const/16 v0, 0x65

    aput-boolean v1, v3, v0

    .line 265
    iget-object v0, p0, Lchan/android/app/pocketnote/app/Note;->reminder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x66

    aput-boolean v1, v3, v0

    goto :goto_3
.end method
