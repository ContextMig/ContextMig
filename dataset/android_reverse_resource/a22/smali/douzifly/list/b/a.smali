.class public final Ldouzifly/list/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No things is good things."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Everything is done."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Genius only means hard-working all one\u2019s life."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Reading makes a full man, conference a ready man, and writing an exact man."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "And those who were seen dancing were thought to be insane by those who could not hear the music."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The only limit to our realization of tomorrow will be our doubts of today.\t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "There is no doubt that good things will come, and when it comes, it will be a surprise. "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Reality is merely an illusion, albeit a very persistent one."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The first and greatest victory is to conquer yourself, to be conquered by yourself is of all things most "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shameful and vile."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "A pessimist sees the difficulty in every opportunity, an optimist sees the opportunity in every difficulty."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is nothing noble in being superior to some other man. The true nobility is in being superior to your "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "previous self. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "A man is not old as long as he is seeking something. A man is not old until regrets take the place of dreams."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "I was not looking for my dreams to interpret my life, but rather for my life to interpret my dreams. "

    aput-object v2, v0, v1

    nop

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Ldouzifly/list/b/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v0, Ldouzifly/list/b/a;->a:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListApp"

    invoke-static {v1, v2}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ldouzifly/list/b/a;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method
