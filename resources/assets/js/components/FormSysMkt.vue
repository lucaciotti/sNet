<template>
    <boxDefault>
        <form action="" method="POST" @submit.prevent='onSubmit' @keydown="form.errors.clear($event.target.name)">

            <div class="form-group has-feedback " :class="{ 'has-error': form.errors.has('codice') }">
                <label>Codice System</label>
                <input type="text" class="form-control" name="codice" value="" placeholder="Codice System" v-model='form.codice'>
                <transition name="fade">
                <span class="help-block" v-if="form.errors.has('codice')" v-text="form.errors.get('codice')"></span>
                </transition>
            </div>

            <div class="form-group">
                <label>Descrizione System</label>
                <input type="text" class="form-control" name="descrizione" value="" placeholder="Descrizione System" v-model='form.descrizione'>
                <span class="help-block" v-if="form.errors.has('descrizione')" v-text="form.errors.get('descrizione')"></span>
            </div>

            <div>
                <button type="submit" class="btn btn-primary" :disabled="form.errors.any()"><i v-if="form.submitting" class="fa fa-refresh fa-spin"></i>{{ trans('_message.submit') }}</button>
            </div>

        </form>
    </boxDefault>
</template>

<script>
import boxDefault from "./layouts/BoxDefault";
import Form from "acacha-forms";

export default {
    data() {
        return {
            form: new Form({
                codice: "",
                descrizione: ""
            })
        }
    },

    components: {
        boxDefault
    },

    methods: {
        onSubmit() {
            this.form.post("/sysMkt").then(response => {
                window.location.reload();
            });
        }
    }
}
</script>

