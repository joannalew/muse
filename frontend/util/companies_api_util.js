export const createCompany = company => (
    $.ajax({
        method: 'POST',
        url: '/api/companies',
        data: { company }
    })
);