.class Lcom/android/settings/dndmode/t;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aaX:[I

.field final synthetic aaY:Lcom/android/settings/dndmode/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/RepeatPreference;[I)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/dndmode/t;->aaY:Lcom/android/settings/dndmode/RepeatPreference;

    iput-object p2, p0, Lcom/android/settings/dndmode/t;->aaX:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/android/settings/dndmode/t;->aaX:[I

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 127
    return-void

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dndmode/t;->aaY:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {v0}, Lcom/android/settings/dndmode/RepeatPreference;->a(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/b;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dndmode/b;

    const/16 v2, 0x7f

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/b;->a(Lcom/android/settings/dndmode/b;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/dndmode/t;->aaY:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/dndmode/RepeatPreference;->onDialogClosed(Z)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/dndmode/t;->aaY:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {v0}, Lcom/android/settings/dndmode/RepeatPreference;->a(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/b;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dndmode/b;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/b;->a(Lcom/android/settings/dndmode/b;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/dndmode/t;->aaY:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/dndmode/RepeatPreference;->onDialogClosed(Z)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/dndmode/t;->aaY:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {v0}, Lcom/android/settings/dndmode/RepeatPreference;->b(Lcom/android/settings/dndmode/RepeatPreference;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
