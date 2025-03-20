.class public interface abstract Lchan/android/app/pocketnote/app/db/NoteManager;
.super Ljava/lang/Object;
.source "NoteManager.java"


# virtual methods
.method public abstract add(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract addReminder(Lchan/android/app/pocketnote/app/Note;Ljava/lang/String;)V
.end method

.method public abstract changeColor(Lchan/android/app/pocketnote/app/Note;I)V
.end method

.method public abstract check(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract edit(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract getId(Lchan/android/app/pocketnote/app/Note;)I
.end method

.method public abstract getNotes(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lock(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract remove(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract removeAll()V
.end method

.method public abstract removeReminder(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract restore(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract searchInCalendar(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation
.end method

.method public abstract trash(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract uncheck(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract unlock(Lchan/android/app/pocketnote/app/Note;)V
.end method
